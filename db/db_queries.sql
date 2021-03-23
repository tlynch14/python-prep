SELECT imdb_rating AS 'IMDb'
FROM movies;

SELECT DISTINCT genre
from movies;

SELECT * 
FROM movies 
WHERE year > 2014;


-- Contains Se_*_en
SELECT * 
FROM movies 
WHERE name LIKE 'Se_en'; 

-- Begins with
SELECT * 
FROM movies 
WHERE name LIKE 'A%'

-- Contains with
SELECT * 
FROM movies 
WHERE name LIKE '%A%'

-- Movies that begin with D, E or F
SELECT *
FROM MOVIES 
WHERE name BETWEEN 'D' and 'G';

-- AND
SELECT *
FROM MOVIES 
WHERE year BETWEEN 1970 and 1979;
    AND genre = 'romance'

-- OR
SELECT *
FROM movies
WHERE genre = 'romance'
   OR genre = 'comedy';


SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;

SELECT * 
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;