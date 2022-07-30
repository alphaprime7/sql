-- i will need customer_id, fn, ln and email
-- interested in rental_date and customer_id
--
select customer.first_name, 
                customer.last_name,
                customer.email
from customer 

where customer.customer_id in
    (
        select rental.customer_id
        from rental
            where date_part('month', rental.rental_date) = 2  
    )

order by 1

