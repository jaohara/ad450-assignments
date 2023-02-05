-- Find the five countries with the most coffee production from 1999-2004,
-- including Country, Rank, and Combined Production from 1999-2004\
SELECT
  RANK() OVER (
    ORDER BY "1999_2000" + "2000_2001" + "2001_2002" + "2002_2003" + "2003_2004" DESC
  ),
  "country",
  "1999_2000" + "2000_2001" + "2001_2002" + "2002_2003" + "2003_2004" AS combined_production_from_1999_2004
FROM 
  coffee_production
LIMIT 5;  
