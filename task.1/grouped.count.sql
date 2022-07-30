-- select distinct first name
-- count the names grouped
SELECT DISTINCT
    first_name,
    COUNT(*)
FROM actor
GROUP BY first_name
HAVING COUNT(*) > 3
ORDER BY 2 ASC