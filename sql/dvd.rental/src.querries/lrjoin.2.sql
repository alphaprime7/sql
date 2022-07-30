--SELECT * from actor
--where first_name = 'Woody'
--SELECT * from film_actor
--SELECT * from film
SELECT first_name, last_name, film.title
    from actor
        LEFT JOIN film_actor
        ON actor.actor_id = film_actor.actor_id
        RIGHT JOIN film -- second opposite join takes precedence so the right join will dominate by bringing in everything from the right table, match and null rest
        ON film.film_id = film_actor.film_id
        AND film.title = 'Snowman Rollercoaster'
WHERE first_name = 'Woody'
AND last_name = 'Hoffman'
ORDER BY 3
--AND film.title = 'Snowman Rollercoaster'

