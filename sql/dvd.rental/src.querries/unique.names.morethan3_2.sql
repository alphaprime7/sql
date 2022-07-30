with task1 AS
(
SELECT DISTINCT first_name as unique_names, count(*) as freq_names FROM actor
GROUP BY (first_name)

)

SELECT * from task1
WHERE freq_names > 3

