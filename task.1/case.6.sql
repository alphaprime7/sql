select count(*) count_all,
sum(case when film.rating = 'G' then 1 else 0 end) as count_G,
sum(case when film.rating = 'PG' then 1 else 0 end) as count_PG,
sum(case when film.rating = 'PG-13' then 1 else 0 end) as count_PG13,
sum(case when film.rating = 'R' then 1 else 0 end) as count_R,
sum(case when film.rating = 'NC-17' then 1 else 0 end) as count_nc17
from film

UNION ALL

SELECT 
count(*) count_all,
count(*) filter(where film.rating = 'G')  count_G,
count(*) filter(where film.rating = 'PG')  count_PG,
count(*) filter(where film.rating = 'PG-13')  count_PG13,
count(*) filter(where film.rating = 'R')  count_R,
count(*) filter(where film.rating = 'NC-17')  count_PGNC17
from film