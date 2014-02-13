-- Why BLcond 0.04 and not 0.05?
--('hart12coppice',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (2.8, 0.18, 2.4, 2, -0.772, 1.3)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);

delete from m3pgjs.tree where type like 'pont-%';

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "pfs", "rootP","litterfall", "k") VALUES 
('pont-hart12coppice-stick',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1,0.081,2.46,2,-1.161976,1.91698)::pfs_t, (0.01,1,0.6)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5),
('pont-hart12coppice',1.5, 0.5, 0.08, (0,20,50)::fT_t, 0.04, (1,0,47.5,3.5)::tdp_t, .26, (19,10.8,5,2)::tdp_t, (0.0001,0.02, 2.6)::cond_t, (0,0.24,7.3)::intcpt_t, (0.17,0.7,0.5,0.02)::pR_t, 0.47, (1.0, 0.18, 2.46, 2, -1.161, 1.9)::pfs_t, (0.1,1,0.75)::rootP_t, (0.0015,0.03,2,2.5)::tdp_t, 0.5);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-beaupre-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,1)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-beaupre',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(166,0.854,4)::wsVI_t,(0.851,0.428)::laVI_t),
('pont-fritzi-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-fritzi',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,3.5)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-raspalje-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,1)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-raspalje',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(161.5,0.887,2.8)::wsVI_t,(0.751,0.495)::laVI_t),
('pont-robusta-stick',0.8,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,1)::wsVI_t,(0.761,0.496)::laVI_t),
('pont-robusta',0.6,0.5, 0.08,(0,20,50)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(162,0.838,5)::wsVI_t,(0.761,0.496)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-15-stick',0.8,0.5, 0.08,(5,15,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-15',0.6,0.5, 0.08,(5,15,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-20-stick',0.8,0.5, 0.08,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-20',0.6,0.5, 0.08,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-25-stick',0.8,0.5, 0.08,(5,25,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-25',0.6,0.5, 0.08,(5,25,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t);

INSERT INTO m3pgjs.tree (type,"fullCanAge", "kG", "alpha", "fT", "BLcond", "fAge", "fN0", "SLA","Conductance", "Intcptn", "pR", "y", "rootP","litterfall", "k","wsVI","laVI") VALUES 
('pont-q5-stick',0.8,0.5, 0.05,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q5',0.6,0.5, 0.05,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q6-stick',0.8,0.5, 0.06,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q6',0.6,0.5, 0.06,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q7-stick',0.8,0.5, 0.07,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q7',0.6,0.5, 0.07,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q8-stick',0.8,0.5, 0.08,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.01,1,0.6)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,1)::wsVI_t,(0.820,0.481)::laVI_t),
('pont-q8',0.6,0.5, 0.08,(5,20,45)::fT_t,0.04,(1,0,47.5,3.5)::tdp_t,0.26,(19,10.8,5,2)::tdp_t,(0.0001,0.02,2.6)::cond_t,(0,0.24,7.3)::intcpt_t,(0.17,0.7,0.5,0.02)::pR_t,0.47,(0.1,1,0.75)::rootP_t,(0.0015,0.03,2,2.5)::tdp_t,0.5,(157.6,0.863,2.8)::wsVI_t,(0.820,0.481)::laVI_t);


drop schema pontailler1999 cascade;
create schema pontailler1999;
set search_path=pontailler1999,m3pgjs,public;

-- Weather data
create table weather (
date date,
tdmean float,
tmax float,
tmin float,
ppt float,
rad float,
daylight float,
daylength float,
Irradiation_J_cm2 float,
latitude float,
T float,
SLP float,
H float,
VV float,
V float,
VM float,
VG float,
RA float,
SN float,
TS float,
FG float 
);

--\set runit `pgloader`
\COPY weather from pontailler1999/weather.csv with CSV header

create view pont as 
select type 
from tree 
where type like 'pont-%' and 
type not like '%-stick';

delete from plantation p using pont t where p.type=t.type;

--create table plantation of plantation_t ( type with options primary key);
insert into plantation("type","StockingDensity","SeedlingMass","pS","pF","pR","seedlingTree","coppicedTree")
with 
t as ( 
 select 
 p.type,
 t1 as tree,
 t2 as stick 
 from pont p join tree t1 using (type) 
 join tree t2 on (p.type||'-stick'=t2.type)
) 
select type,15625,0.0004,0.1,0,0.9,stick,tree
from t;

delete from public.location where name='pontailler1999';
insert into public.location (name,longitude,latitude,swconst,swpower,maxAWS) 
VALUES ('pontailler1999',2.1875,48.6993,0.55,6,10);

create view input as 
with w as (
     select l.location_id,date,(tmin,tmax,tdmean,ppt,rad,daylight)::weather_t as w
     from location l, weather
     where l.name='pontailler1999'
),
ws as (
select 
location_id,
array_agg(date order by date) as dates,
array_agg(w order by date) as weather
from w 
group by location_id
)
select 
location_id,
(maxaws,swpower,swconst)::soil_t as soil,
dates,
weather 
from ws join location using (location_id);

create view manage as 
with d as (
 select unnest(dates) as date 
 from input
)
select 'coppice'::text as manage_id,
array_agg(
(case when (date < '1991-12-15'::date) 
then 1.0 else 0.0 end,
case when (date < '1991-12-15'::date) 
then 1.0 else 0.8 end,
case when (date in ('1987-12-15'::date,'1989-12-15'::date,'1991-12-15'::date, '1993-12-15'::date, '1995-12-15'::date, '1997-12-15'::date )) 
            then true else false end)::manage_t
 order by date) as manage
from d;

drop table if exists growthmodel;
\set start `date`
create table growthmodel as 
select 
location_id,plantation.type,manage_id,
grow(plantation,soil,weather,manage) as ps 
from input,plantation join pont using (type),
manage;

-- \COPY (with a as (select dates from input),b as (select unnest(dates) as date,(unnest(ps)).* from growthmodel,a where type='pont-hart12coppice') select *,"WF"+"WS" as "WSF" from b) to pontailler1999/pont-hart12coppice.csv with csv header
-- for t in `psql -A -F, -t --pset=footer=off  -d poplarcoppice -c 'select type from pontailler1999.pont'`; do psql -A -F, --pset=footer=off -d poplarcoppice -c "with a as (select dates from pontailler1999.input) select unnest(dates) as date,(unnest(ps)).* from pontailler1999.growthmodel,a where type='$t'" > $t.csv; done
