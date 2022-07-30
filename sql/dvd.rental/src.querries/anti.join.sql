SELECT first_name, last_name, film.title, rental.rental_date, rental.return_date,
payment.amount, payment.payment_date
FROM customer
    JOIN rental
    ON customer.customer_id = rental.customer_id
    JOIN inventory 
    ON inventory.inventory_id = rental.inventory_id
    JOIN film
    ON film.film_id = inventory.film_id
    LEFT JOIN payment
    ON payment.rental_id = rental.rental_id
    and payment.customer_id = customer.customer_id

    WHERE customer.customer_id = 336
    and payment.rental_id is null
