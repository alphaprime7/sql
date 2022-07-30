select avg(age(return_date, rental_date)) as "Avg_age"
from rental
where return_date is not null