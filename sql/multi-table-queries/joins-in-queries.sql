-- Retrieve the `order_id`, `customer_id` and `company_name` for all orders, including customer information
SELECT o.order_id,
    c.customer_id,
    c.company_name
FROM orders o
    INNER JOIN customers c ON o.customer_id = c.customer_id;
-- Retrieve all customers and their orders, including those customers who have not placed any orders
SELECT c.customer_id,
    c.company_name,
    o.order_id
FROM customers c
    LEFT JOIN orders o ON c.customer_id = o.customer_id;
-- Retrieve all products and their categories, including those categories that have no products
SELECT p.product_name,
    c.category_name
FROM products p
    RIGHT JOIN categories c ON p.category_id = c.category_id;