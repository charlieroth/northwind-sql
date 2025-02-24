-- Retrieve the top 5 customers alphabetically by `company_name`
SELECT customer_id,
    company_name
FROM customers
ORDER BY company_name
LIMIT 5;
-- Retrieve only the first 10 orders from the `orders` table
SELECT *
FROM orders
LIMIT 10;
-- Retrieve only the first 5 orders from the `orders` table, offset by 5
SELECT *
FROM orders
LIMIT 5 OFFSET 5;