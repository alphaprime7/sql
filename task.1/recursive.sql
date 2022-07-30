select * 
from crew

alter table name
add column mnid as smallint

update crewmembers
set manid = (select from crew )

--
with RECURSIVE employees as (
    
)