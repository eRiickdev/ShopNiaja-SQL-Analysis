-- Question 1: How many customers do we have in each city?
SELECT city, COUNT(*) AS total_customers
FROM Customers
GROUP BY city;

-- Question 2: What is the total revenue ShopNaija has generated?
SELECT SUM(quantity * unit_price) AS total_revenue
FROM Order_Items;

-- Question 3: Which product category generates the most revenue?
SELECT p.category, 
       SUM(oi.quantity * p.price) AS total_revenue 
FROM Order_Items oi 
JOIN Products p ON oi.product_id = p.product_id 
GROUP BY p.category;

-- Question 4: Which customers have placed more than one order?
SELECT c.name, COUNT(o.order_id) AS total_orders 
FROM Orders o 
JOIN Customers c ON o.customer_id = c.customer_id 
GROUP BY c.name 
HAVING COUNT(o.order_id) > 1;

-- Question 5: What are the top 3 most expensive products?
SELECT price, category, product_name 
FROM Products 
ORDER BY price DESC 
LIMIT 3;

-- Question 6: Total revenue from delivered orders only
SELECT o.status, 
       SUM(oi.quantity * oi.unit_price) AS total_revenue 
FROM Orders o 
JOIN Order_Items oi ON o.order_id = oi.order_id 
WHERE o.status = 'Delivered'
GROUP BY o.status;

-- Question 7: Which city has the highest number of delivered orders?
SELECT delivery_city, 
       COUNT(*) AS highest_delivery 
FROM Orders 
WHERE status = 'Delivered'
GROUP BY delivery_city 
ORDER BY highest_delivery DESC 
LIMIT 1;

-- Question 8: Full order history for each customer
SELECT
c.name AS customer_name,
o.order_date,
p.product_name,
oi.quantity,
(oi.quantity * oi.unit_price) AS amount_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id;
