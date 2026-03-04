-- ===============================================================
-- File: aggregation_examples.sql
-- Topic: SQL Aggregate Functions
-- Author: Rita Sebastian
-- Description: Demonstrates aggregation functions used for
--              summarizing transactional data.
-- ===============================================================


/*
=================================================================
WHAT ARE AGGREGATE FUNCTIONS?
=================================================================

Aggregate functions perform calculations on multiple rows
and return a single summarized value.

They are widely used in data analysis to generate insights
such as totals, averages, counts, and ranges.

Common Aggregate Functions:

COUNT() → Counts rows
SUM()   → Calculates total value
AVG()   → Calculates average
MIN()   → Returns smallest value
MAX()   → Returns largest value
*/


-- ===============================================================
-- COUNT()
-- ===============================================================

-- Count total transactions

SELECT COUNT(*) AS total_transactions
FROM CustomerTransactions;


-- Count successful transactions

SELECT COUNT(*) AS successful_transactions
FROM CustomerTransactions
WHERE transaction_status = 'Completed';



-- ===============================================================
-- SUM()
-- ===============================================================

-- Total revenue generated

SELECT SUM(amount) AS total_revenue
FROM CustomerTransactions;



-- ===============================================================
-- AVG()
-- ===============================================================

-- Average transaction value

SELECT AVG(amount) AS average_transaction_amount
FROM CustomerTransactions;



-- ===============================================================
-- MIN()
-- ===============================================================

-- Smallest transaction amount

SELECT MIN(amount) AS minimum_transaction
FROM CustomerTransactions;



-- ===============================================================
-- MAX()
-- ===============================================================

-- Highest transaction amount

SELECT MAX(amount) AS maximum_transaction
FROM CustomerTransactions;



-- ===============================================================
-- MULTIPLE AGGREGATIONS
-- ===============================================================

-- Overall transaction statistics

SELECT
    COUNT(*) AS total_transactions,
    SUM(amount) AS total_revenue,
    AVG(amount) AS average_transaction,
    MIN(amount) AS lowest_transaction,
    MAX(amount) AS highest_transaction
FROM CustomerTransactions;
