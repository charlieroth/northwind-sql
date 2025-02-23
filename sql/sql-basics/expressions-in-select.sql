-- Arithmetic Expressions
SELECT quantity * unit_price AS total_price
FROM order_details;
-- String Expressions
SELECT first_name || ' ' || last_name AS full_name
FROM employees;
-- Date and Time Expressions
SELECT first_name,
    last_name,
    age(CURRENT_DATE, birth_date) as employee_age
FROM employees;
-- Conditional Expressions
SELECT product_name,
    unit_price,
    CASE
        WHEN unit_price < 10 THEN 'Low'
        WHEN unit_price BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'High'
    END AS price_category
FROM products;
-- Function Calls
SELECT UPPER(category_name)
FROM categories;