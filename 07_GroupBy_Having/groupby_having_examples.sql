-- ===============================================================
-- Topic: GROUP BY and HAVING
-- Description: Demonstrates grouping and filtering aggregated data
-- ===============================================================


/*
=================================================================
WHAT IS GROUP BY?
=================================================================

GROUP BY is used to group rows that have the same values
in specified columns.

It is commonly used with aggregate functions such as:

COUNT()
SUM()
AVG()
MIN()
MAX()
*/


-- ===============================================================
-- TOTAL REVENUE BY DEVICE
-- ===============================================================

SELECT
    login_device,
    SUM(amount) AS total_revenue
FROM CustomerTransactions
GROUP BY login_device;



-- ===============================================================
-- NUMBER OF TRANSACTIONS BY DEVICE
-- ===============================================================

SELECT
    login_device,
    COUNT(*) AS total_transactions
FROM CustomerTransactions
GROUP BY login_device;



-- ===============================================================
-- AVERAGE TRANSACTION AMOUNT BY DEVICE
-- ===============================================================

SELECT
    login_device,
    AVG(amount) AS average_transaction
FROM CustomerTransactions
GROUP BY login_device;



-- ===============================================================
-- TOTAL REVENUE BY PRODUCT
-- ===============================================================

SELECT
    product,
    SUM(amount) AS product_revenue
FROM CustomerTransactions
GROUP BY product;



/*
=================================================================
WHAT IS HAVING?
=================================================================

HAVING is used to filter grouped results after aggregation.

Difference:

WHERE → filters rows before grouping
HAVING → filters groups after aggregation
*/


-- ===============================================================
-- DEVICES GENERATING REVENUE GREATER THAN 80000
-- ===============================================================

SELECT
    login_device,
    SUM(amount) AS total_revenue
FROM CustomerTransactions
GROUP BY login_device
HAVING SUM(amount) > 80000;



-- ===============================================================
-- PRODUCTS WITH REVENUE ABOVE 50000
-- ===============================================================

SELECT
    product,
    SUM(amount) AS product_revenue
FROM CustomerTransactions
GROUP BY product
HAVING SUM(amount) > 50000;
