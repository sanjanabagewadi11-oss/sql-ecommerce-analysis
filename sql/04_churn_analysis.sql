WITH last_order AS (
  SELECT customer_id, MAX(order_date) last_order_date
  FROM orders
  GROUP BY customer_id
)
SELECT
  CASE
    WHEN DATEDIFF('2022-01-01', last_order_date) > 90
         THEN 'Churned'
    ELSE 'Active'
  END AS customer_status,
  COUNT(*) customers
FROM customers c
JOIN last_order ON c.customer_id = last_order.customer_id
GROUP BY 1;
