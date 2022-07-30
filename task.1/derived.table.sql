-- top 5 clients with +30$ from 2007-02-15 to 2007-02-21

SELECT first_name,
        last_name,
        email,
        top_five.total_amount
from 
(
    SELECT customer_id, SUM(amount) as total_amount
    FROM payment
    WHERE payment_date BETWEEN '2007-02-15' AND '2007-02-21'
    GROUP BY customer_id
    HAVING SUM(amount) > 30
    ORDER BY SUM(amount) DESC
    LIMIT 5
) as top_five
    JOIN customer
    on customer.customer_id = top_five.customer_id
    order by 4 DESC