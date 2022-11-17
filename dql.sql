 ---dql
SELECT * FROM Customer;
SELECT product_name, category FROM product WHERE price BETWEEN 5000 AND 10000;
SELECT * FROM product ORDER BY price DESC;
SELECT SUM(quantity), AVG(total_amount), MAX(total_amount), MIN(total_amount) FROM orders;
SELECT DISTINCT product_id, quantity FROM orders;
SELECT customer_id FROM orders WHERE quantity > 2;
SELECT EXTRACT(MONTH FROM order_date), quantity from orders;
SELECT product_name, customer_name, order_date FROM orders inner JOIN product ON orders.product_id = product.product_id JOIN customer ON orders.customer_id = customer.customer_id
SELECT * FROM orders WHERE order_date > current_date - interval '3 months'
SELECT customer_name FROM Customer LEFT JOIN Orders ON customer.customer_id = orders.Customer_id WHERE orders.Customer_id IS NULL
