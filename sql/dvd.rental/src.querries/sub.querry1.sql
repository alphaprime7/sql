-- task: customers rented within 05252005 & 05262005
--select * from customer
--select * from rental
select customer.customer_id, customer.first_name, customer.last_name
from customer
-- with subquerries between tables i need to use the foreign key to link my querry to subquerry
-- when using in there should only be 1 column since in takes specific values 
where customer.customer_id in (
    select rental.customer_id 
    from rental
    where rental.rental_date between '2005-05-25' and '2005-05-26'
)




