SELECT 
    product_category_name,
    product_id,
    SUM(price) AS revenue
FROM order_items 
JOIN products USING(product_id)
  GROUP BY product_category_name, product_id
ORDER BY revenue DESC
LIMIT 5;
