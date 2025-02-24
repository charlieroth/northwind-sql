-- Create a new view
CREATE VIEW "Customer and Order Details" AS
SELECT c.customer_id,
    c.company_name,
    o.order_id,
    o.order_date
FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id;
-- Query the created view
SELECT *
FROM "Customer and Order Details"
WHERE order_date >= '1995-01-01'
    AND order_date <= '1999-01-01'
ORDER BY order_date DESC;