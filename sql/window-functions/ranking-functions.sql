-- Assings a rank to each product within its category based on its unit price. The `PARTITION BY` clause
-- divides the products by `category_id`, the `ORDER BY` clause sorts them by `unit_price` in descending
-- order, and the `RANK()` function assigns a rank to each product within its category.
SELECT product_name,
    unit_price,
    category_id,
    RANK() OVER (
        PARTITION BY category_id
        ORDER BY unit_price DESC
    ) AS rank_in_category
FROM products;