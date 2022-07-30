SELECT actor_id,
    first_name,
    last_name
FROM actor
WHERE first_name NOT LIKE 'A%'
    AND last_name NOT LIKE 'A%'
ORDER BY 2,3;