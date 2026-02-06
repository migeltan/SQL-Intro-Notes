--GROUPING DATA
--GROUP BY
SELECT certification, COUNT(title) AS title_count
FROM films
GROUP BY certification;

--GROUP BY MULTIPLE FIELDS
SELECT certification, language, COUNT(title) AS title_count
FROM films
GROUP BY certification, language

--GROUP BY with ORDER BY
SELECT
    certification,
    COUNT(title) AS title_count
FROM films
GROUP BY certification
ORDER BY title_count DESC

--ORDER OF EXECUTION:
SELECT --3
    certification,
    COUNT(title) AS title_count --4
FROM films --1
GROUP BY certification --2
ORDER BY title_count DESC --5
LIMIT 3; --6

--EXAMPLE:
-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT release_year, country, MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country;


-- Find the year with the most unique languages
SELECT release_year, COUNT(DISTINCT language) AS lang
FROM films
GROUP BY release_year
ORDER BY lang DESC;

--FILTERING GROUPED DATA
-- HAVING - filters grouped records
SELECT certification, COUNT (title) AS title_count -- 5
FROM films -- 1
WHERE certification -- 2
IN ('G', 'PG', 'PG-13')
GROUP BY certification -- 3 
HAVING COUNT(title) > 500 -- 4
ORDER BY title_count DESC -- 6
LIMIT 3; -- 7

-- In what years was the average film duration over two hours?
SELECT release_year
FROM films
GROUP BY release_year
HAVING AVG(duration) > 120;

--EXAMPLE:
-- Select the country and distinct count of certification as certification_count
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films
-- Group by country
GROUP BY country
-- Filter results to countries with more than 10 different certifications
HAVING COUNT(DISTINCT certification) > 10;

--EXAMPLE:
-- Select the country and average_budget from films
SELECT country, AVG(budget) AS average_budget
-- Group by country
FROM films
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;

-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

--EXAMPLE:
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING AVG(budget) > 60000000;

--EXAMPLE:
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;


