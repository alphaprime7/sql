--dense rank is good.
-- row_number is another good one.

with cte as (
select customer.customer_id,
customer.first_name,
customer.last_name,
count(rental.rental_id) as count_of_rentals

from customer
join rental 
on rental.customer_id = customer.customer_id 

group by customer.customer_id,
customer.first_name,
customer.last_name
)

select cte.customer_id,
            cte.first_name,
            cte.last_name,
            cte.count_of_rentals,
            rank() over (order by count_of_rentals desc) as rank_example,
            dense_rank() over (order by count_of_rentals desc) as denserank_example,
            row_number() over (order by count_of_rentals desc) as rownum_example

from cte 
order by count_of_rentals desc
        