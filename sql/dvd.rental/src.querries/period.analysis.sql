with weeklyrevenue as (
    select extract(week from payment_date) as week,
        sum(payment.amount) as revenue
        from rental
        join payment 
        on payment.rental_id = rental.rental_id
        and payment.customer_id = rental.customer_id

        group by extract(week from payment_date)
)

select week,
revenue,
--lag(revenue,1) over (order by week) as la
Revenue - lag(revenue,1) over (order by week) as weekoverweek
from weeklyrevenue