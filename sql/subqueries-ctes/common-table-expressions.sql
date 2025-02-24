-- Defines a CTE called "DiscountedProducts" that calculates the discounted
-- prices for products with discounts. The CTE is used in the outer query to
-- filter products with discounted prices less than $20
WITH DiscountedProducts AS (
    SELECT p.product_id,
        p.product_name,
        p.unit_price,
        p.unit_price * (1 - od.discount) AS discounted_price
    FROM products p
        JOIN order_details od ON p.product_id = od.product_id
    WHERE od.discount > 0
)
SELECT *
FROM DiscountedProducts
WHERE discounted_price < 20;