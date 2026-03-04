-- =====================================================
-- Topic: Database Basics
-- Description: Basic concepts of database and SQL
-- =====================================================

/*
-------------------------------------------------------
1. What is a Database?
-------------------------------------------------------
A database is a structured collection of data that is
stored electronically and can be easily accessed,
managed, and updated.

Example:
A company storing employee details, salary,
department information.
*/

-- Example table creation

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

/*
-------------------------------------------------------
2. What is DBMS?
-------------------------------------------------------
DBMS (Database Management System) is software that
allows users to create, manage, and manipulate
databases.

Examples:
MySQL
PostgreSQL
Oracle
SQL Server
*/


/*
-------------------------------------------------------
3. What is SQL?
-------------------------------------------------------
SQL (Structured Query Language) is used to
communicate with databases.

SQL allows users to:
- Create tables
- Insert data
- Retrieve data
- Update records
- Delete records
*/


/*
-------------------------------------------------------
4. Example Data Insert
-------------------------------------------------------
*/

INSERT INTO employees VALUES
(1,'John Smith','IT',60000,'2022-01-10'),
(2,'Emma Johnson','HR',50000,'2021-05-15'),
(3,'Michael Brown','Finance',65000,'2020-08-20'),
(4,'Sophia Davis','Marketing',55000,'2023-02-12');


/*
-------------------------------------------------------
5. View Data
-------------------------------------------------------
*/

SELECT * FROM employees;


/*
-------------------------------------------------------
6. Select Specific Columns
-------------------------------------------------------
*/

SELECT employee_name, salary
FROM employees;


/*
-------------------------------------------------------
7. Filter Data
-------------------------------------------------------
*/

SELECT *
FROM employees
WHERE department = 'IT';


/*
-------------------------------------------------------
8. Sort Data
-------------------------------------------------------
*/

SELECT *
FROM employees
ORDER BY salary DESC;
