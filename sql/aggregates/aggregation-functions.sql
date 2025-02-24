-- Calculates the average and maximum `unit_price` from the `products` table
SELECT AVG(unit_price) AS average_price,
    MAX(unit_price) AS highest_price
FROM products;
-- Find categories that have an average unit price greater than $20
SELECT category_id,
    AVG(unit_price) as average_price
FROM products
GROUP BY category_id
HAVING AVG(unit_price) > 20;