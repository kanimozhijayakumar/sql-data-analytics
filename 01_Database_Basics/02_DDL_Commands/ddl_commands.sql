-- =====================================================
-- Topic: Data Definition Language (DDL)
-- Author: Rita Sebastian
-- Description: SQL commands used to define database structure
-- =====================================================


/*
-------------------------------------------------------
What is DDL?
-------------------------------------------------------

DDL (Data Definition Language) is used to define
and manage the structure of database objects.

DDL commands are used to:

- Create tables
- Modify tables
- Delete tables
- Remove table data

Common DDL Commands:

CREATE
ALTER
DROP
TRUNCATE

*/


-- ==========================================
-- 1. CREATE TABLE
-- ==========================================

/*
CREATE TABLE is used to create a new table
in a database.
*/

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);


-- ==========================================
-- 2. ALTER TABLE
-- ==========================================

/*
ALTER TABLE is used to modify an existing table.
We can add columns, remove columns, or rename columns.
*/

-- Add new column

ALTER TABLE departments
ADD manager_name VARCHAR(100);


-- ==========================================
-- 3. DROP TABLE
-- ==========================================

/*
DROP TABLE removes a table permanently
from the database.
*/

-- Example

-- DROP TABLE departments;


-- ==========================================
-- 4. TRUNCATE TABLE
-- ==========================================

/*
TRUNCATE removes all rows from a table
but keeps the table structure.
*/

-- Example

-- TRUNCATE TABLE departments;
