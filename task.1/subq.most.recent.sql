-- task find the most recent films
-- approach use the film and customer table
-- film table use the film_id, title and release_year
-- rental table use the rental_date, rental_id, customer_id, inventory_id
-- inventory table use film_id and inventory_id
-- in logic goes into a single attribute
with most_recent as 
(
select rental.customer_id as r_cid, max(rental.rental_date) as mr_date from rental
group by rental.customer_id
order by 1
)

select customer.customer_id, 
customer.first_name, 
customer.last_name 
from customer

where customer.customer_id in (
    select r_cid from most_recent
)


















