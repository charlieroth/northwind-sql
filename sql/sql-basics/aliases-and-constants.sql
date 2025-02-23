-- Aliases
SELECT first_name AS "First Name",
    last_name AS "Last Name"
FROM employees;
-- Constants
SELECT first_name,
    last_name,
    'Northwind Traders' AS company
FROM employees;
-- Combining Aliases and Constants
SELECT first_name AS "First Name",
    last_name AS "Last Name",
    'Northwind Traders' AS company
FROM employees;