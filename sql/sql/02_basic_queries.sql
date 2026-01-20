SELECT SUM(price) AS REVENUE FROM order_items;

SELECT customer_id,
COUNT(*) AS ORDER_COUNT FROM orders
GROUP BY customer_id;
