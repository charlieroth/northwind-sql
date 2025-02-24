-- Converts the quantity from integer to real
SELECT CAST(quantity AS REAL) AS quantity_real
FROM order_details;
-- Formats the order date as 'YYYY-DD-MM'
SELECT order_date,
    TO_CHAR(order_date, 'YYYY-DD-MM') AS formatted_date
FROM orders;
-- Converts the string '10.5' to a numeric value
SELECT TO_NUMBER('10.5', '99.9') AS converted_number;