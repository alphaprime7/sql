-- I have to learn union very well
/*SELECT first_name, last_name, film.title, rental.rental_date, rental.return_date,
payment.amount, payment.payment_date
FROM customer
    JOIN rental
    ON customer.customer_id = rental.customer_id
    JOIN inventory 
    ON inventory.inventory_id = rental.inventory_id
    JOIN film
    ON film.film_id = inventory.film_id
    LEFT JOIN payment -- payment to see what in the payment table is lacking from data after joining payment information
    ON payment.rental_id = rental.rental_id
    and payment.customer_id = customer.customer_id

    WHERE customer.customer_id = 336
    and payment.rental_id is null
*/

select title, rental_rate 
from film

-- my where clause involves a subquery 
WHERE film.rental_rate < (
    SELECT ROUND(AVG(film.rental_rate), 2) 
    from film
)
