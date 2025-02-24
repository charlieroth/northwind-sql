-- Categorizes products based on their unit prices
SELECT product_name,
    unit_price,
    CASE
        WHEN unit_price < 10 THEN 'Low'
        WHEN unit_price BETWEEN 10 AND 50 THEN 'Medium'
        ELSE 'High'
    END AS price_category
FROM products;
-- Displays 'N/A' if the `ship_region` is `NULL`
SELECT ship_region,
    COALESCE(ship_region, 'N/A') as region
FROM orders;
-- Returns NULL if the quantity is 0; otherwise, it returns the quantity
SELECT quantity,
    NULLIF(quantity, 0) AS non_zero_quantity
FROM order_details
ORDER BY non_zero_quantity ASC;