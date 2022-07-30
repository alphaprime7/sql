-- finally understanding joins
-- SELECT * from film_actor, foreign key here is actor_id
SELECT first_name, last_name, film.title
FROM public.actor

    LEFT JOIN film_actor
    ON actor.actor_id = film_actor.actor_id
        RIGHT JOIN film -- if i make this a right join then i can filter a single film from here and just join to the 
        ON film.film_id = film_actor.film_id
        AND film.title = 'Snowman Rollercoaster'

        WHERE actor.last_name = 'Hoffman'
        AND actor.first_name = 'Woody'
        --AND film.title = 'Snowman Rollercoaster'
ORDER BY 2

        



