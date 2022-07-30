select first_name, last_name, 
concat(first_name,' ', last_name) as "full_name",
      last_name || ' ' || first_name as "last_name"
from actor
ORDER BY "full_name"

-- concat using pipes or the concat function
-- the concant function can handle null values but pipes (||) cannot
-- Outcomes is using pipes, concat to combine columns 
-- new ways to write aliases with quotes


