select extract('hour' from rental.rental_date) as rental_hour,
count(rental.rental_id) as "rental_count by hour"
from rental
group by extract('hour' from rental.rental_date)
order by 2 desc
