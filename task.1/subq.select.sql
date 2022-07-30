select customer.first_name,
customer.last_name,
(
    SELECT MIN(rental.rental_date)
    from rental
    WHERE rental.customer_id = customer.customer_id
),

(
    SELECT MAX(rental.rental_date)
    FROM rental
    WHERE rental.customer_id = customer.customer_id
)

from customer



