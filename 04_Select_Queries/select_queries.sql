-- =====================================================
-- Topic: SELECT Queries
-- Description: Retrieving data from database tables
-- =====================================================


/*
-------------------------------------------------------
SELECT Statement
-------------------------------------------------------

SELECT is used to retrieve data from a table.

Syntax:

SELECT column_name
FROM table_name;

*/


-- ==========================================
-- Select all columns
-- ==========================================

SELECT *
FROM employees;



-- ==========================================
-- Select specific columns
-- ==========================================

SELECT employee_name, salary
FROM employees;



-- ==========================================
-- WHERE Clause
-- ==========================================

/*
WHERE is used to filter records.
*/

SELECT *
FROM employees
WHERE department = 'IT';



-- ==========================================
-- ORDER BY
-- ==========================================

/*
ORDER BY is used to sort the result.
*/

SELECT *
FROM employees
ORDER BY salary DESC;



-- ==========================================
-- DISTINCT
-- ==========================================

/*
DISTINCT removes duplicate values.
*/

SELECT DISTINCT department
FROM employees;



-- ==========================================
-- LIMIT
-- ==========================================

/*
LIMIT restricts number of rows returned.
*/

SELECT *
FROM employees
LIMIT 3;



-- ==========================================
-- Multiple Conditions
-- ==========================================

SELECT *
FROM employees
WHERE salary > 55000
AND department = 'IT';
