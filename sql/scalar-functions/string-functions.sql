-- Retrieves the `product_name` and its length for each product
SELECT product_name,
    LENGTH(product_name) AS name_length
FROM products;
-- Retrieves the contact names of customers in uppercase
SELECT UPPER(contact_name) AS uppercase_name
FROM customers;
-- Retrieves the category names in lowercase
SELECT LOWER(category_name) AS lowercase_category
FROM categories;
-- Retrieves the first 10 characters of the category descriptions
SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;