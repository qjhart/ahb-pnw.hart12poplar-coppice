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
set search_path=proe2002,public;

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
\set runit `pgloader`

INSERT INTO tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "pfs", "rootP","litterfall", "k") VALUES 
('greenhouse',2.0, 0.5, 0.08, (0,20,50)::fT_t, 0.05, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (2.8, 0.18, 2.4, 2, -0.772, 1.3)::pfs_t, (0.2,10,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);


create table plantation of plantation_t ( type with options primary key);
insert into plantation("type","StockingDensity","SeedlingMass","pS","pF","pR","seedlingTree","coppicedTree")
select u.name,10000,u.mass,0.2,0.6,0.2,t,t
from tree t,
(VALUES('greenhouse',0.000005),('seedling',0.00012)) as u(name,mass)
where t.type='greenhouse';

drop table if exists public.location;
  create table public.location (
	 location_id serial primary key,
	 name text,
	 longitude float,
	 latitude float,
	 SWconst float,
	 SWpower float,
	 maxAWS float
  );

  -- Proe sez, -3d52'W 55d40'N 
  insert into location (name,longitude,latitude) select * from
  (VALUES
  ('paisley',-4.420202,55.841321)
  ) AS l(name,longitude,latitude);

-- Need to get Soil parameters - 
-- Proe sez poorly drained eutric gleysols 
-- clays, but always wet.

update location set swconst=0.4,swpower=3, maxAWS=100 where name='paisley';

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
  where (yyyy=1988 and mm >=5) or 
  (yyyy=1989 and mm<4) 
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
(0,1.0,false)::manage_t
 order by date) as manage
from d;

drop table if exists greenhouse_growthmodel;
create table greenhouse_growthmodel as 
select 
location_id,plantation.type,manage_id,
grow(plantation,soil,weather,manage) as ps 
from proe2002.greenhouse_input,plantation,greenhouse_manage;


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
  where (yyyy=1989 and mm >=5) or 
  (yyyy>=1990 and yyyy<=1995) 
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
f as (VALUES (0.5),(0.6),(0.7),(0.8)) as f(f)
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
from proe2002.input,plantation,manage
where plantation.type='seedling';
