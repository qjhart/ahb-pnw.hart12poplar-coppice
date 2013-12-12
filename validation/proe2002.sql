drop schema proe2002 cascade;
create schema proe2002;
set search_path=proe2002,public;

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
