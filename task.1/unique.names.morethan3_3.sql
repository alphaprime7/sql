-- the little project is figure out how to spit the duplicate name
-- 1. find anyone with same names
/*with data as(
SELECT first_name, last_name, COUNT(*) as freq
FROM actor
GROUP BY (first_name, last_name)
)

select * from data
WHERE freq > 1
*/

-- Task = find unique first names from the actor table that occur more than 3 times
-- find the distinct first names from the table and count them and then spit out the output

with task1 AS
(
SELECT DISTINCT first_name as unique_names FROM actor
GROUP BY (first_name)
HAVING COUNT(*) > 3
)

SELECT * from task1
































-- CLAUSES
-- 1. I classify WHERE, OR and AND as clauses that often work together

-- COMPARISON OPERATORS
-- 1. Q actors with last name starting with WXYZ
-- approach is to use a comparison operator (>)
-- another approach is to use the like or not like with a wild card operator
-- important note is the wild card operator will NOT work with IN or NOT IN
-- with strings we use quotations and azure favors single quotes

-- 2. Describe how to use the where clause?
-- where can be used with AND & OR

-- 3. Find actors whose names are between W and Z
-- i covered GREATER THAN & LIKE with a wildcard operator
-- like is the most secure way and > is also good
-- between is equivalent to W < last_name < Z. cannot use between

-- 4. This has to be in order in my brain so now comparison operators have been covered.

-- LOGICAL OPERATORS
-- 1. LIKE(NOT), IN(NOT), BETWEEN

-- So far filtering data has been completed

-- COUNT() function

-- DATA AGGREGATION 
-- using GROUP BY and data needs to be aggregable