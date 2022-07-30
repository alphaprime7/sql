select  rental_id,
rental_date,
return_date,
--coalessce(return_date, current_timestamp)
coalesce(cast(return_date as varchar), '0') as ret_date

from public.rental
order by return_date desc