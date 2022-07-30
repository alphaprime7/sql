select 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    rental.rental_date,
    payment.payment_date,
    payment.amount,
    SUM(payment.amount) over (partition by customer.customer_id order by payment.payment_date) as cumulative_rental

from public.rental
join customer 
on customer.customer_id = rental.customer_id
join public.payment
on payment.rental_id = rental.rental_id
and payment.customer_id = rental.customer_id

where extract(month from payment_date) = 2
    and extract(year from payment_date) = 2007

order by customer.customer_id,
    payment.payment_date
