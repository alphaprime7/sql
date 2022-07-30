-- I need to follow that in sql we make tables with select and sql takes instructions based on the table made
-- i can also shorten things a little
-- lexical processing is the way code is written, physical is the backend and logical is the sequence followed by sql to access physical processes


select  film_actor.actor_id, first_name, last_name, film.title
from public.actor
    RIGHT JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
    RIGHT JOIN film
    ON film.film_id = film_actor.film_id
WHERE film.title = 'Snowman Rollercoaster'
ORDER BY 3

