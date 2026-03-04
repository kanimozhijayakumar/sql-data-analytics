-- ======================================================
-- Topic: Database Basics
-- Description: Introduction to Databases and SQL
-- ======================================================

/*
-------------------------------------------------------
1. What is a Database?
-------------------------------------------------------
A database is an organized collection of data stored
electronically so that it can be easily accessed,
managed, and updated.

Example:
A company storing employee information such as
name, salary, department, and hire date.
*/


/*
-------------------------------------------------------
2. What is DBMS?
-------------------------------------------------------
DBMS (Database Management System) is software that
manages databases.

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
SQL stands for Structured Query Language.

It is used to:
- Create databases
- Create tables
- Insert data
- Retrieve data
- Update records
- Delete records
*/


-- ==========================================
-- Example: Creating a Table
-- ==========================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);


-- ==========================================
-- Insert Sample Data
-- ==========================================

INSERT INTO employees VALUES
(1,'John Smith','IT',60000,'2022-01-10'),
(2,'Emma Johnson','HR',50000,'2021-05-15'),
(3,'Michael Brown','Finance',65000,'2020-08-20'),
(4,'Sophia Davis','Marketing',55000,'2023-02-12');


-- ==========================================
-- View Data
-- ==========================================

SELECT * FROM employees;


-- ==========================================
-- Select Specific Columns
-- ==========================================

SELECT employee_name, salary
FROM employees;


-- ==========================================
-- Filter Data
-- ==========================================

SELECT *
FROM employees
WHERE department = 'IT';


-- ==========================================
-- Sort Data
-- ==========================================

SELECT *
FROM employees
ORDER BY salary DESC;
