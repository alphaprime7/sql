with cte as (
    select a.first_name,
            a.last_name,
            f.title
    from actor a
    JOIN film_actor fa
    on fa.actor_id = a.actor_id
    JOIN film f
    on f.film_id = fa.film_id
)

select title 
FROM cte
WHERE cte.last_name = 'Bale'

EXCEPT

select title
from cte
WHERE cte.last_name = 'Monroe'
--AND cte.first_name = 'Penelope'