pivot(
    count(film_id)
    for film.rating in ('G', 'PG', 'PG-13', 'R', 'NC-17')
)

-- crosstab in postgres
-- use microsoft sql for this back to ifs that i am getting used to