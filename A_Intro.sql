SELECT *
--selects the field needed
FROM books;
--indicates in which table it is indicated

SELECT name
FROM patrons; --end with semicolon

SELECT card_num, name
FROM patrons;

--selecting all:
SELECT * 
FROM patrons;

--ALIASING:
SELECT name, AS first_name --result will be first name
FROM employees;

-- UNIQUE Values - removes repeat values
SELECT DISTINCT year_hired
FROM employees;

SELECT DISTINCT dept_id, year_hired
FROM employees;

--VIEWS - saving sql query, parang struct
CREATE VIEW employee_hire_years AS
SELECT id, name, year_hired
FROM employees;

--then query it:
SELECT id, year_hired
FROM employee_hire_years

/*-- Your code to create the view:
CREATE VIEW library_authors AS
SELECT DISTINCT author AS unique_author
FROM books;

-- Select all columns from library_authors
SELECT *
FROM library_authors*/

--QUERYING A DATABASE
