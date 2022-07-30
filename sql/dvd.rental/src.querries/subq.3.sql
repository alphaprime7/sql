SELECT customer_id, customer.first_name, last_name
from customer
-- i need to find the data from the rental table so i am using 2 tables here. customer table and rental table to achieve the subquerry
WHERE customer.customer_id IN(
    SELECT rental.customer_id
    FROM rental
    WHERE rental.rental_date BETWEEN '2005-05-25' AND '2005-05-26'
)