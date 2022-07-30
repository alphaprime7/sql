
with cte as (
select rental.customer_id,
rental.inventory_id,
rental.rental_date,
row_number() over (partition by customer_id order by rental_date desc) RowNum from rental
)

select customer.first_name,
        customer.last_name,
        cte.rental_date,
        film.title

from cte
join customer
on cte.customer_id = customer.customer_id 
join inventory
on inventory.inventory_id = cte.inventory_id
join film
on film.film_id = inventory.film_id

where CTE.RowNum = 1

order by first_name, last_name