-- Find the biggest coffee exporters of the last 5 years
SELECT 
  country, 
  "2015" + "2016" + "2017" + "2018" + "2019" AS exports_2015_2019
FROM 
  coffee_export
ORDER BY
  exports_2015_2019 DESC
LIMIT 5;