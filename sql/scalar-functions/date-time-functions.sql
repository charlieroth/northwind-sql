-- Retrieves the current date and time
SELECT NOW() as current_timestamp;
-- Extracts the year from the order dates
SELECT order_date,
    EXTRACT(
        year
        FROM order_date
    ) AS order_date
FROM orders;
-- Retrieves the month from the order dates
SELECT order_date,
    DATE_PART('month', order_date) AS order_month
FROM orders;
-- Calculates the age of employees based on their birth date
SELECT birth_date,
    AGE(NOW(), birth_date) AS employee_age
FROM employees;