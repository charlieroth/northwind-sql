-- Retrieves the discounts and their absolute values
SELECT discount,
    ABS(discount) AS absolute_discount
FROM order_details;
-- Rounds the `unit_price` to one decimal place
SELECT unit_price,
    ROUND(CAST(unit_price AS numeric), 1) AS rounded_price
FROM products;
-- Calculates the remainder when the order ID is divided by 5
SELECT order_id,
    MOD(order_id, 5) AS remainder
FROM orders;
-- Calculates the square of quantities
SELECT quantity,
    POWER(quantity, 2) AS squared_quantity
FROM order_details;