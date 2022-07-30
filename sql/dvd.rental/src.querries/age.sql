select rental_date,
        return_date,
        age(return_date,rental_date) as "age_of_rental"
from rental
where return_date is not null
order by 3