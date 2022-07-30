with f_2 as (
    select DISTINCT first_name, COUNT(*) "frq_2" from actor
    GROUP BY first_name
    HAVING COUNT(*) > 2
),

f_3 as (
    select first_name, frq_2 as frq_3 from f_2
    WHERE frq_2 = 4
)

SELECT * from f_3




