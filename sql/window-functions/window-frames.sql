-- Calculates the moving average of freight costs for oders over a window of 5 rows
-- (the current row, 2 preceding rows, and 2 following rows). The `ROWS BETWEEN` clause
-- defines the window frame, and the `AVG()` function calculates the average `freight`
-- within that frame
SELECT order_id,
    order_date,
    customer_id,
    freight,
    AVG(freight) OVER (
        ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING
    ) as moving_average_freight
FROM orders;