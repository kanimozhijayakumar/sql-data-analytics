-- ===============================================================
-- File: joins_examples.sql
-- Topic: SQL Joins
-- Author: Rita Sebastian
-- Description: Demonstrates different types of joins used
--              to combine data from multiple tables.
-- ===============================================================


/*
=================================================================
WHAT IS A JOIN?
=================================================================

A JOIN is used to combine rows from two or more tables
based on a related column between them.

Types of Joins:

1. INNER JOIN
2. LEFT JOIN
3. RIGHT JOIN
4. FULL JOIN
*/


/*
=================================================================
CREATE SAMPLE TABLES
=================================================================
*/

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(100),
    amount DECIMAL(10,2)
);


/*
=================================================================
INSERT SAMPLE DATA
=================================================================
*/

INSERT INTO Customers VALUES
(1,'Ravi','Chennai'),
(2,'Priya','Bangalore'),
(3,'Arjun','Hyderabad'),
(4,'Meena','Chennai');

INSERT INTO Orders VALUES
(101,1,'Laptop',50000),
(102,2,'Phone',20000),
(103,1,'Headphones',1500),
(104,3,'Tablet',15000);



/*
=================================================================
INNER JOIN
=================================================================

Returns only matching records from both tables.
*/

SELECT
    Customers.customer_name,
    Orders.product,
    Orders.amount
FROM Customers
INNER JOIN Orders
ON Customers.customer_id = Orders.customer_id;



/*
=================================================================
LEFT JOIN
=================================================================

Returns all records from the left table and
matching records from the right table.
*/

SELECT
    Customers.customer_name,
    Orders.product
FROM Customers
LEFT JOIN Orders
ON Customers.customer_id = Orders.customer_id;



/*
=================================================================
RIGHT JOIN
=================================================================

Returns all records from the right table and
matching records from the left table.
*/

SELECT
    Customers.customer_name,
    Orders.product
FROM Customers
RIGHT JOIN Orders
ON Customers.customer_id = Orders.customer_id;



/*
=================================================================
FULL JOIN
=================================================================

Returns all records when there is a match in
either table.

Note: Some databases use FULL OUTER JOIN.
*/

SELECT
    Customers.customer_name,
    Orders.product
FROM Customers
FULL OUTER JOIN Orders
ON Customers.customer_id = Orders.customer_id;
