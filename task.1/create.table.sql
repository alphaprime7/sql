create table scifi_films as "sc"
select category.name as cat,
film.title as ft,
film.length as fl,
film.rating as fr
from film
    join film_category as fc
    on fc.film_id = film.film_id
    join category 
    on category.category_id = fc.category_id
where category.name = 'sci-fi'


