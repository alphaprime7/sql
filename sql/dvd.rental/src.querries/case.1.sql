select  
film_id,
title,
length,
rating,
CASE rating
when 'G' then 'general audiences'
when 'PG' then 'parental guidance'
when 'pG-13' then 'parental strong caution'
when 'R' then 'restricted'
when 'NC-17' then 'adults only'
else 'Unknown'
end as rating_desc

from public.film
order by length