-- Create database
CREATE DATABASE company_db;

-- Use database
USE company_db;

-- Create table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert data
INSERT INTO employees VALUES
(1,'John','IT',60000),
(2,'Emma','HR',50000),
(3,'David','Finance',65000);

-- View data
SELECT * FROM employees;
