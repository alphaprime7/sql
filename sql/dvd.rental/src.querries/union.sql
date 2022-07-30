SELECT customer.last_name,
        customer.first_name
from customer 
WHERE customer.first_name = 'Susan'

UNION 

SELECT actor.last_name,
        actor.first_name
from actor
WHERE actor.first_name = 'Susan'

UNION 

SELECT actor.last_name,
        actor.first_name
from actor
WHERE actor.first_name = 'Tom'