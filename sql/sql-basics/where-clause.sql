-- Retrieve all products with a unit price greater than $50
SELECT product_name,
    unit_price
FROM products
WHERE unit_price > 50;
-- Retrieve all orders shipped to the 'USA' and shipped via shipper with `ship_via` 3
SELECT order_id,
    order_date
FROM orders
WHERE ship_country = 'USA'
    AND ship_via = 3;
-- Retrieve all customer who are not from 'Germany'
SELECT customer_id,
    company_name,
    country
FROM customers
WHERE NOT country = 'Germany'