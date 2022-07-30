with task1 AS
(
SELECT DISTINCT first_name as unique_names, count(*) as more_than_3times FROM actor
GROUP BY (first_name)
HAVING COUNT(*) >= 3
)

SELECT * from task1