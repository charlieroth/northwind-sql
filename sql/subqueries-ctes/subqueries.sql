-- Scalar Subquery
--
-- Retrieves products that belong to the "Beverages" category, using the
-- resulting `category_id` in the outer query to filter products
SELECT product_name,
    unit_price
FROM products
WHERE category_id = (
        SELECT category_id
        FROM categories
        WHERE category_name = 'Beverages'
    );
-- Correlated Subquery
--
-- Retrieves customers who have placed orders, the subquery checks for the existence
-- of orders for each customer in the outer query
SELECT customer_id,
    company_name
FROM customers c
WHERE EXISTS (
        SELECT 1
        FROM orders o
        WHERE o.customer_id = c.customer_id
    );