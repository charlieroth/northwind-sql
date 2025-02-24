-- Retrieve the names of employees and their respective managers
SELECT e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    m.first_name AS manager_first_name,
    m.last_name AS manager_last_name
FROM employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id;
-- Find products that belong to the same category
SELECT p1.category_id,
    p1.product_name,
    p2.product_name
FROM products p1
    INNER JOIN products p2 ON p1.category_id = p2.category_id
WHERE p1.product_id != p2.product_id;