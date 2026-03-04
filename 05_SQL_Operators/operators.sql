-- ===============================================================
-- Topic: SQL Operators
-- Description: Demonstrates different SQL operators used for
--              filtering, comparison, and logical operations.
-- ===============================================================


/*
=================================================================
INTRODUCTION
=================================================================

SQL Operators are used to perform operations on values
stored in database tables. They are mainly used with
SELECT statements to filter and manipulate data.

Types of SQL Operators:

1. Arithmetic Operators
2. Comparison Operators
3. Logical Operators
4. Special Operators
*/


/*
=================================================================
1. ARITHMETIC OPERATORS
=================================================================

Arithmetic operators perform mathematical calculations
on numeric columns.

Operators:
+  Addition
-  Subtraction
*  Multiplication
/  Division
*/

SELECT
    employee_name,
    salary,
    salary + 5000 AS increased_salary
FROM employees;



/*
=================================================================
2. COMPARISON OPERATORS
=================================================================

Comparison operators compare two values and return
records that satisfy the condition.

Operators:
=   Equal
>   Greater Than
<   Less Than
>=  Greater Than or Equal
<=  Less Than or Equal
!=  Not Equal
*/

-- Employees with salary greater than 60000

SELECT *
FROM employees
WHERE salary > 60000;


-- Employees working in HR department

SELECT *
FROM employees
WHERE department = 'HR';



/*
=================================================================
3. LOGICAL OPERATORS
=================================================================

Logical operators combine multiple conditions.

Operators:
AND
OR
NOT
*/

-- Employees in IT department with salary above 55000

SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 55000;


-- Employees in IT or HR department

SELECT *
FROM employees
WHERE department = 'IT'
OR department = 'HR';


-- Employees not working in Finance department

SELECT *
FROM employees
WHERE NOT department = 'Finance';



/*
=================================================================
4. BETWEEN OPERATOR
=================================================================

BETWEEN is used to filter values within a range.
*/

SELECT *
FROM employees
WHERE salary BETWEEN 50000 AND 65000;



/*
=================================================================
5. IN OPERATOR
=================================================================

IN allows filtering multiple values in a condition.
*/

SELECT *
FROM employees
WHERE department IN ('IT', 'HR', 'Finance');



/*
=================================================================
6. LIKE OPERATOR
=================================================================

LIKE is used for pattern matching in text values.

Wildcards:
%  → any number of characters
_  → single character
*/

-- Employee names starting with 'J'

SELECT *
FROM employees
WHERE employee_name LIKE 'J%';



/*
=================================================================
7. IS NULL OPERATOR
=================================================================

IS NULL is used to check for missing values.
*/

SELECT *
FROM employees
WHERE hire_date IS NULL;
