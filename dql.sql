 ---dql
select * from Customer;
select product_name, category from product where price between 5000 and 10000;
select * from product order by price DESC;
select sum(quantity), avg(total_amount), max(total_amount), min(total_amount)from orders;
select distinct product_id, quantity from orders;
select customer_id from orders where quantity > 2;
---select count(customer_id), extract (month from order_date) as 'month' from orders group by order_date
---select product.product_name, customer.customer_name, order_date from orders INNER JOIN product ON orders.product_id INNER JOIN customer ON orders.customer_id = customer.customer_id
select * from orders where order_date > current_date - interval '3 months'
select customer_name FROM Customer LEFT JOIN Orders ON customer.customer_id = orders.Customer_id WHERE orders.Customer_id IS NULL