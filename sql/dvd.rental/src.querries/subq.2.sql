-- find the titles with rental rates greater than the avg
-- approach is to find the titles from the film table and avg rental rate from the rental table
--SELECT * FROM film
SELECT film.film_id, film.title, film.rental_rate
FROM film

-- implement my subquerry
WHERE film.rental_rate > (
    SELECT ROUND(AVG(film.rental_rate), 2)
    FROM film
)

