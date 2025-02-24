-- Group products by `category_id` and calculates the number of products and the average `unit_price` for each category
SELECT category_id,
    COUNT(*) AS product_count,
    AVG(unit_price) as average_price
FROM products
GROUP BY category_id
ORDER BY category_id ASC;
-- Group the products by `category_id`, calculate the number of products and the average `unit_price` for each category
-- filter the results to include only those categories with more than 10 products
SELECT category_id,
    COUNT(*) as product_count,
    AVG(unit_price) AS average_price
FROM products
GROUP BY category_id
HAVING COUNT(*) > 10
ORDER BY category_id ASC;
-- Filter the products to include only those that are not discontinued, then group the remaining products by `category_id`,
-- calculates the number of products and the average `unit_price` for each category, finally fitlers the results to
-- include only those categories with an average of `unit_price` greater than $20
SELECT category_id,
    COUNT(*) as product_count,
    AVG(unit_price) AS average_price
FROM products
WHERE discontinued = 0
GROUP BY category_id
HAVING AVG(unit_price) > 20
ORDER BY category_id ASC;