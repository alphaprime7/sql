SELECT customer_id,
        first_name,
        last_name,
        email
FROM customer

WHERE EXISTS (
        SELECT customer_id 
        FROM payment
        WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-19'
        AND payment.customer_id = customer.customer_id
        GROUP BY customer_id
        HAVING SUM(amount) >= 30

)
