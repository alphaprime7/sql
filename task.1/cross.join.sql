-- cross joins and full joins (full outer join)
-- a table for the catesian product
with SetA as (
    SELECT 'X' as A
    UNION ALL
    SELECT 'Y' 
    UNION ALL
    SELECT 'Z' 
),

with SetB as (
    SELECT '1' as B
    UNION ALL
    SELECT '2' 
    UNION ALL
    SELECT '3' 
)

SELECT A, B
FROM SetA 
    cross JOIN SetB