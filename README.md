# ShopNaija SQL Analytics Project

## About the Project
ShopNaija is a fictional Nigerian e-commerce company similar to Jumia or Konga. 
This project simulates a real-world data analyst role where I was tasked with 
answering key business questions about the company's customers, products, orders 
and revenue using SQL.

## Database Structure
The database consists of four tables:
- **Customers** — customer profiles including name, city and signup date
- **Products** — items available for sale including category and price in Naira
- **Orders** — every purchase made including delivery city and status
- **Order_Items** — individual products within each order including quantity and unit price

## Business Questions Answered
1. How many customers do we have in each city?
2. What is the total revenue ShopNaija has generated?
3. Which product category generates the most revenue?
4. Which customers have placed more than one order?
5. What are the top 3 most expensive products?
6. What is the total revenue from delivered orders only?
7. Which city has the highest number of delivered orders?
8. What is the full order history for each customer?

## Key Insights
- Lagos has the largest customer base with 3 customers
- ShopNaija has generated total revenue of ₦1,562,000
- Electronics dominates revenue at ₦1,244,000 — nearly 80% of total revenue
- Only 2 out of 8 customers are repeat buyers — a 25% repeat purchase rate
- Lagos leads delivered orders with 3 successful deliveries
- ₦375,000 in revenue is at risk from cancelled and pending orders
- Aisha Bello and Fatima Musa are the most active customers with 3 purchases each

## SQL Techniques Used
- SELECT, WHERE, ORDER BY
- Aggregate functions — COUNT, SUM, AVG, MIN, MAX
- GROUP BY and HAVING
- JOINs — INNER, LEFT, RIGHT
- Subqueries
- CTEs — Common Table Expressions
- Window Functions — ROW_NUMBER, RANK, SUM OVER

## Tools Used
- MySQL
- SQLiteOnline

## About Me
I am currently learning Data Analytics from scratch with the goal of becoming 
a professional Data Analyst. This is my first SQL project.
