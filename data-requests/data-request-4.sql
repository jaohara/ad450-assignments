-- Find the top five countries where green coffee inventories have grown the most
-- since 2015
SELECT 
	country,
  "2015",
  "2019",
	"2019" - "2015" AS inventory_growth
FROM 
	coffee_green_coffee_inventories
ORDER BY
	inventory_growth DESC
LIMIT 5;