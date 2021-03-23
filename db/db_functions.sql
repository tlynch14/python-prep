SELECT COUNT(*)
FROM fake_apps
WHERE price = 0.00;

-- Max/Min/Av
SELECT MAX/MIN/AVG(downloads)
FROM fake_apps;

SELECT name, ROUND(price, 0)
FROM fake_apps;

SELECT ROUND(AVG(price), 2)
from fake_apps;

-- Group by
SELECT price, COUNT(*) 
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

-- Total downloads per category
SELECT category, SUM(downloads)
from fake_apps
GROUP BY category;

-- Provides all price points in a particular category
SELECT category, 
  price, 
  AVG(downloads)
FROM fake_apps
GROUP BY category, price;
