-- ==========================================
-- DML COMMANDS
-- ==========================================

/*
DML (Data Manipulation Language)

Used to modify data inside tables.

Commands:
INSERT
UPDATE
DELETE
*/


-- INSERT

INSERT INTO employees VALUES
(4,'Sophia','Marketing',55000);


-- UPDATE

UPDATE employees
SET salary = 62000
WHERE employee_id = 1;


-- DELETE

DELETE FROM employees
WHERE employee_id = 4;
