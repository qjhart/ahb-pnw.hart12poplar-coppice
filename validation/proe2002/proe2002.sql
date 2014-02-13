-- Proe200.sql
-- -----------

-- This SQL file creates the data to compare the poplar growth model with
-- the results from proe2002, for a coppice field test in Scotland.  The
-- SQL file includes some tables to hold the data, as well as some
-- functions to run the tests.

-- .. code-block:: sql
-- :linenos:

drop schema proe2002 cascade;
create schema proe2002;
set search_path=proe2002,m3pgjs,public;

-- paisley
-- -------

-- This table holds the raw data from the UK Met, .  After creating the
-- table, we need to call the pgloader command in order to complete the
-- process.

create table paisley (
yyyy integer,
mm integer,
tmin float,
tminp char,
tmax float,
tmaxp char,
af integer,
afp char,
rain float,
rainp char,
sun float,
sunp char
);

-- This is a quick and dirty (and cool!)  way to run the pgloader command.
\set runit `cd proe2002; pgloader`

delete from m3pgjs.tree where type like 'proe-%';

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "pfs", "rootP","litterfall", "k") VALUES 
('proe-def-greenhouse',2.0, 0.5, 0.08, (0,20,50)::fT_t, 0.05, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (2.8, 0.18, 2.4, 2, -0.772, 1.3)::pfs_t, (0.2,10,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5),
('proe-def',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1.0, 0.18, 2.46, 2, -1.161, 1.9)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('proe-raspalje-greenhouse',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('proe-raspalje',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t);

create view proe as 
select type 
from tree 
where type like 'proe-%' and 
type not like '%-greenhouse';

create table plantation of plantation_t ( type with options primary key);
insert into plantation("type","StockingDensity","SeedlingMass","pS","pF","pR","seedlingTree","coppicedTree")
with 
t as ( 
 select 
 p.type,
 t1 as tree,
 t2 as greenhouse
 from proe p join tree t1 using (type) 
 join tree t2 on (p.type||'-greenhouse'=t2.type)
),
u(name,mass) as (
VALUES('greenhouse',0.000005),('seedling',0.00012)
)
select CASE WHEN (u.name='greenhouse') THEN t.type||'-'||u.name ELSE t.type END,10000,u.mass,0.2,0.6,0.2,greenhouse,tree
from t,u;

delete from public.location where name='proe2002';
-- drop table if exists public.location;
--   create table public.location (
-- 	 location_id serial primary key,
-- 	 name text,
-- 	 longitude float,
-- 	 latitude float,
-- 	 SWconst float,
-- 	 SWpower float,
-- 	 maxAWS float
--   );

-- Proe sez, -3d52'W 55d40'N 
-- Need to get Soil parameters - 
-- Proe sez poorly drained eutric gleysols 
-- clays, but always wet.
  insert into location (name,longitude,latitude,swconst,swpower,maxAWS)
  VALUES ('proe2002',-4.420202,55.841321,0.4,3,100);

create view proe2002.greenhouse_input as 
with w as (
  select 
  l.location_id,
  (yyyy||'-'||mm||'-15')::date as date,
  (20,20,20,rain,
  (solar_radiation(extraterrestrial_radiation((yyyy||'-'||mm||'-15')::date,
	           l.latitude),sun/30.5))::decimal(6,2),
   (sun/30.5)::decimal(6,2))::weather_t as w 
  from 
  location l,
  proe2002.paisley 
  where l.name='proe2002' and (
  (yyyy=1988 and mm >=5) or 
  (yyyy=1989 and mm<4) )
  ),
ws as (
select 
location_id,
array_agg(date order by date) as dates, 
array_agg(w order by date) as weather 
from location l join w using (location_id) 
group by location_id
)
select 
location_id,
(maxaws,swpower,swconst)::soil_t as soil,
dates,
weather
from ws join location l 
using (location_id);
 
create view proe2002.greenhouse_manage as 
with d as (
 select unnest(dates) as date 
 from proe2002.greenhouse_input
) 
select 'greenhouse'::text as manage_id,
array_agg(
(1.0,1.0,false)::manage_t
 order by date) as manage
from d;

drop table if exists greenhouse_growthmodel;
create table greenhouse_growthmodel as 
select 
location_id,plantation.type,manage_id,
grow(plantation,soil,weather,manage) as ps 
from greenhouse_input,
plantation join proe  on (plantation.type=proe.type||'-greenhouse'),
greenhouse_manage;

-- Now update your seedling to match the greenhouse
with f as (
 select replace(type,'-greenhouse','') as type,
 (ps[array_length(ps,1)]).* 
 from greenhouse_growthmodel
), 
u as ( 
 select type,"W"/10000 as "SeedlingMass",
 "WF"/"W" as "pF",
 "WS"/"W" as "pS",
 "WR"/"W" as "pR" 
 from f
) 
update plantation p 
set "SeedlingMass"=u."SeedlingMass","pF"=u."pF", 
 "pS"=u."pS", "pR"=u."pR" 
from u where p.type=u.type;

create view proe2002.input as 
with w as (
  select 
  l.location_id,
  (yyyy||'-'||mm||'-15')::date as date,
  (tmin,tmax,tmin,rain,
   solar_radiation(extraterrestrial_radiation((yyyy||'-'||mm||'-15')::date,
                                              l.latitude),sun/30.5),
   sun/30.5)::weather_t as w 
  from 
  location l,
  proe2002.paisley 
  where l.name='proe2002' and ((yyyy=1989 and mm >=5) or 
  (yyyy>=1990 and yyyy<=1995) )
  ),
ws as (
select 
location_id,
array_agg(date order by date) as dates, 
array_agg(w order by date) as weather 
from location l join w using (location_id) 
group by location_id
)
select 
location_id,
(maxaws,swpower,swconst)::soil_t as soil,
dates,
weather
from ws join location l 
using (location_id);

create view proe2002.manage as 
with d as (
 select unnest(dates) as date 
 from proe2002.input
),
f(f) as (
VALUES (0.5),(0.6),(0.7),(0.8)
)
select 'coppice' as manage_id,
array_agg(
(0,0.9,case when (date in ('1990-03-15'::date)) 
            then true else false end)::manage_t
 order by date) as manage
from d 
union select 
'nocoppice' as manage_id,
array_agg(
(0,0.9,false)::manage_t 
 order by date) as manage
from d;
 
drop table if exists growthmodel;
\set start `date`
create table growthmodel as 
select 
location_id,plantation.type,manage_id,
grow(plantation,soil,weather,manage) as ps 
from input,
plantation join proe using (type)
,manage;

-- Having trouble w/ SolRad from cmdline :(
create table dates as select dates from proe2002.input;

-- for c in coppice nocoppice; do for t in `psql -A -F, -t --pset=footer=off  -d poplarcoppice -c 'select type from proe2002.proe'`; do psql -A -F, --pset=footer=off -d poplarcoppice -c "with a as (select dates from proe2002.dates),b as (select unnest(dates) as date,(unnest(ps)).* from proe2002.growthmodel,a where type='$t' and manage_id='$c') select *,\"WF\"/(\"WS\"+\"WF\") as fbs,\"WR\"/(\"WS\"+\"WF\") as rootshoot from b" > $t-$c.csv; done; done

