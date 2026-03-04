-- ===============================================================
-- Topic: SQL Subqueries
-- Description: Demonstrates how subqueries are used to retrieve
--              data using nested queries.
-- ===============================================================


/*
=================================================================
WHAT IS A SUBQUERY?
=================================================================

A subquery is a query nested inside another SQL query.

It is used to retrieve data that will be used by the
main query as a condition.

Subqueries can be used with:

SELECT
INSERT
UPDATE
DELETE

Types of Subqueries:

1. Single Row Subquery
2. Multi Row Subquery
3. Correlated Subquery
*/


/*
=================================================================
CREATE SAMPLE TABLE
=================================================================
*/

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO Employees VALUES
(1,'Ravi','IT',60000),
(2,'Priya','HR',50000),
(3,'Arjun','Finance',70000),
(4,'Meena','IT',65000),
(5,'Karthik','HR',48000);



/*
=================================================================
1. SINGLE ROW SUBQUERY
=================================================================

Find employees whose salary is greater than the
average salary of all employees.
*/

SELECT employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);



/*
=================================================================
2. MULTI ROW SUBQUERY
=================================================================

Find employees working in departments that have
employees earning more than 65000.
*/

SELECT employee_name, department
FROM Employees
WHERE department IN (
    SELECT department
    FROM Employees
    WHERE salary > 65000
);



/*
=================================================================
3. SUBQUERY WITH SELECT
=================================================================

Display employee salary along with the average salary
in the company.
*/

SELECT
    employee_name,
    salary,
    (SELECT AVG(salary) FROM Employees) AS company_average_salary
FROM Employees;



/*
=================================================================
4. CORRELATED SUBQUERY
=================================================================

Find employees earning above the average salary
of their department.
*/

SELECT e1.employee_name, e1.department, e1.salary
FROM Employees e1
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees e2
    WHERE e1.department = e2.department
);
