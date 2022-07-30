select rental.rental_date,
date_trunc('month', rental.rental_date) as "rental_month_trunc",
date_part('month', rental.rental_date) as "rental_month_trunc"
from rental

