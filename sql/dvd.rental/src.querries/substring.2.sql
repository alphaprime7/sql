select  customer_id
,store_id
,first_name
,last_name
,email,
substring(email, 1, 7) as substringexample,
position('@' in email) as Pos_example,
position('.' in email) as Pos_example2,
substring(email, 1, position('@' in email) -1) as user_name1,
length(email) as length_example,
substring(email, position('@' in email) +1, length(email)) as domain_name,
replace(email, 'sekilacustomer.org', 'adventureworks.com') as new_email,
substring(email, position('.' in email) +1, length(last_name)) as last_name,
replace(substring(email, position('.' in email) +1, length(email)), '@sakilacustomer.org', '') as ln2,
substring(email, position('.' in email) +1, position('@' in email) - position('.' in email) -1) as ln3,
substring(email, 1, position('.' in email) -1) as first_name
from public.customer
LIMIT 1000