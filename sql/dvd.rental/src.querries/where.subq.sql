SELECT first_name,
        last_name,
        email
        
FROM customer

WHERE customer_id IN (

        SELECT customer_id FROM (
            SELECT customer_id, SUM(amount) as "total_amount"
            FROM payment
            WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-21'
            GROUP BY customer_id
            HAVING SUM(amount) > 40
            ORDER BY total_amount DESC
            LIMIT 10
        ) as top_five
)

