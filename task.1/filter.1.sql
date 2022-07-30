-- find most popular film genre accross clients
select customer.first_name,
        customer.last_name,
        count(rental_id) filter (where category.name = 'Action') Count_action,
            count(rental_id) filter (where category.name = 'Classics') Count_class,
                count(rental_id) filter (where category.name = 'Comedy') Count_com,
                    count(rental_id) filter (where category.name = 'Drama') Count_dram,
                        count(rental_id) filter (where category.name = 'Horror') Count_horr,
                        count(rental_id) filter (where category.name = 'Sci-Fi') Count_scifi

from customer
    join rental 
    on rental.customer_id = customer.customer_id
    join inventory 
    on inventory.inventory_id = rental.inventory_id
    join film
    on film.film_id = inventory.film_id
    join film_category 
    on film.film_id = film_category.film_id
    join category 
    on category.category_id = film_category.category_id

group by customer.first_name, customer.last_name

order by 8 desc