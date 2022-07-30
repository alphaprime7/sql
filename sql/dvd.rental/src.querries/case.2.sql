select  
CASE rating
when 'G' then 'general audiences'
when 'PG' then 'parental guidance'
when 'PG-13' then 'parental strong caution'
when 'R' then 'restricted'
when 'NC-17' then 'adults only'
else 'Unknown'
end as rating_desc
,count(film_id) as countoffilms

from film
group by CASE rating
when 'G' then 'general audiences'
when 'PG' then 'parental guidance'
when 'pG-13' then 'parental strong caution'
when 'R' then 'restricted'
when 'NC-17' then 'adults only'
else 'Unknown'
end
order by rating_desc