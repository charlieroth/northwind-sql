-- Calculatese the total frieght costs for orders based on their order date.
-- The `ORDER BY` clause sorts the orders by `order_date`, and the `SUM()`
-- function calcluates the running total for each order
SELECT order_id,
    order_date,
    customer_id,
    SUM(freight) OVER (
        ORDER BY order_date
    ) AS running_total_freight
FROM orders;