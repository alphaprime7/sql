
select LOCALTIMESTAMP, 
CURRENT_DATE,
cast(LOCALTIMESTAMP as date) as "date",
LOCALTIME,
CAST(LOCALTIMESTAMP as time) as "time",
CURRENT_TIME,
CURRENT_TIMESTAMP
, CURRENT_TIMESTAMP at time ZONE 'Europe/Helsinki',
EXTRACT(YEAR FROM CURRENT_TIMESTAMP) as "Year",
EXTRACT(MONTH FROM CURRENT_TIMESTAMP) as "month",
EXTRACT(DAY FROM CURRENT_TIMESTAMP) as "day",
EXTRACT(HOUR FROM CURRENT_TIMESTAMP) as "hour",
EXTRACT(MINUTE FROM CURRENT_TIMESTAMP) as "minute",
EXTRACT(YEAR FROM CURRENT_TIMESTAMP) as "Year",

date_part('year', CURRENT_DATE) as "Today''s year",
date_trunc('year', CURRENT_DATE) as "Today''s year"



--select * from pg_timezone_names

