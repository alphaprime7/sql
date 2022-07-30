/*select customer_id, max(rental_date) as mr_date
from rental
group by rental.customer_id
order by 1*/

select distinct customer.customer_id,
customer.first_name,
customer.last_name,
max(rental.rental_date) as "lastest rental date",
string_agg(film.title, '; ' order by film.title) as "films rented"
from customer

-- perform joins since it asked for name so i need to join to table where i will need some stuff
join rental 
on rental.customer_id = customer.customer_id
join inventory 
on inventory.inventory_id = rental.inventory_id
join film
on film.film_id = inventory.inventory_id

where rental.rental_date = (
    select max(R1.rental_date)
    from rental R1
    where rental.customer_id = r1.customer_id
)
group by customer.customer_id,
        customer.first_name,
        customer.last_name








