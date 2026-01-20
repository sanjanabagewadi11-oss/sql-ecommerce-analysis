CREATE TABLE orders (
    order_id VARCHAR(100) PRIMARY KEY,
    customer_id VARCHAR(50),
    order_purchase DATETIME,
    order_status VARCHAR(50)
);
SELECT COUNT(*) FROM ORDERS;

CREATE TABLE customers(
customer_id VARCHAR(100),
customer_city VARCHAR(50),
customer_state VARCHAR(50)
);
SELECT COUNT(*) FROM customers;

CREATE TABLE products(
    product_id VARCHAR(50) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_weight INT,
    product_length INT,
    product_height INT,
    product_width INT
);
SELECT COUNT(*) FROM products;

CREATE TABLE order_items (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2)
);
SELECT COUNT(*) FROM order_items;

