WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m-01') AS month,
        SUM(price) AS revenue
    FROM orders join order_items using(order_id)
    GROUP BY DATE_FORMAT(order_date, '%Y-%m-01')
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prev_month,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY month)) 
        / LAG(revenue) OVER (ORDER BY month) * 100,
    2) AS growth_pct
FROM monthly_sales
ORDER BY month;
