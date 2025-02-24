-- Find customers without a region specified
SELECT customer_id,
    company_name
FROM customers
WHERE region IS NULL;
-- Find customers with a region specified
SELECT customer_id,
    company_name
FROM customers
WHERE region IS NOT NULL;
-- Display 'N/A' when the `region` is NULL
SELECT customer_id,
    company_name,
    COALESCE(region, 'N/A') AS region
FROM customers;
-- Treat NULL `unit_price` as 0 in a `SUM`
SELECT SUM(COALESCE(unit_price, 0))
FROM products;