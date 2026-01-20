WITH customer_orders AS (
    SELECT 
        c.customer_id,
        COUNT(DISTINCT o.order_id) AS order_count,
        SUM(oi.price) AS lifetime_value
    FROM customers c
    LEFT JOIN orders o
        ON c.customer_id = o.customer_id
    LEFT JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id
)
SELECT
    customer_id,
    order_count,
    lifetime_value,
    CASE
        WHEN lifetime_value >= 1000 THEN 'Gold'
        WHEN lifetime_value >= 500 THEN 'Silver'
        ELSE 'Bronze'
    END AS loyalty_tier
FROM customer_orders;

