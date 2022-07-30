select case 
when length between 0 and 59 then 'less than 1 hour'
when length between 60 and 119 then 'less than 2 hour'
else 'over 3 hours'
end as film_length_cat,
count(film_id) as count_offilms
from public.film
group by case
    when length between 0 and 59 then 'less than 1 hour'
    when length between 60 and 119 then 'less than 2 hour'
    else 'over 3 hours'
    end 
    order by count_offilms desc