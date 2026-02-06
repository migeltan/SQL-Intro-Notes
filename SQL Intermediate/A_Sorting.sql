--SORTING RESULTS IN A SEQUENCE
--ORDER BY - SORTS RESULTS WITH ONE OR MORE FIELDS
SELECT title, budget
FROM films
ORDER BY budget; --SMALLEST TO BIGGEST

SELECT title, budget
FROM films
ORDER BY title; --ALPHABETICAL

--ASC - ASCending
SELECT title, budget
FROM films
ORDER BY budget ASC;

--DESC - DESCending
WHERE budget IS NOT NULL
ORDER BY budget DESC;

--ORDER BY field_one, field_two
--field_two is a tie breaker

SELECT titles, wins, imdb_score
FROM best_movies
ORDER BY wins DESC, imdb_score DESC;

--ORDER OF EXECUTION:
SELECT item --3
FROM coats --1
WHERE color = 'yellow' --2
ORDER BY length --4
LIMIT 3; 

--EXAMPLE:
-- Select name from people and sort alphabetically
SELECT name
FROM people
WHERE name IS NOT NULL
ORDER BY name ASC;
-- Select the title and duration from longest to shortest film
SELECT title, duration
FROM films
WHERE title IS NOT NULL
ORDER BY duration DESC;
-- Select the certification, release year, and title sorted by certification and release year
SELECT certification, release_year, title
FROM films
ORDER BY certification ASC, release_year DESC