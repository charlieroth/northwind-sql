-- Combine the list of customer IDs from the `customers` table and the `orders` table, removing duplicates
SELECT customer_id
FROM customers
UNION
SELECT customer_id
FROM orders;
-- Combine the list of product names from the `products` table and the `order_details` table, including duplicates
SELECT product_name
FROM products
UNION ALL
SELECT CAST(product_id as VARCHAR)
FROM order_details;
-- Find the customer IDs that have both place orders and are listed in the `customers` table
SELECT customer_id
FROM customers
INTERSECT
SELECT customer_id
FROM orders;
-- Find the customer IDs that are listed in the `customers` table but have placed any orders
SELECT customer_id
FROM customers
EXCEPT
SELECT customer_id
FROM orders;