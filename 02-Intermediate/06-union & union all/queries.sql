-- UNION

SELECT customer_id, customer_name FROM customers
UNION
SELECT product_id, product_name FROM products;


-- UNION ALL

SELECT customer_id, customer_name FROM customers
UNION ALL
SELECT product_id, product_name FROM products;