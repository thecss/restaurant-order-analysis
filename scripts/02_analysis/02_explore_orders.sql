/*
=====================================================
		Explore the Orders 
=====================================================

QUESTIONS ANSWERED:
1. What are the first and last order dates in the dataset?
2. How many unique orders were placed within this date range?
3. How many individual items were ordered within this date range?
4. Which orders contain the highest number of items?
5. How many orders contain more than 12 items?

SQL FUNCTIONS / CLAUSES USED:
- SELECT
- LIMIT
- MIN()
- MAX()
- COUNT()
- DISTINCT
- GROUP BY
- ORDER BY
- HAVING
- Subquery
*/

USE restaurant_db;

-- View the orders table
SELECT *
FROM order_details
LIMIT 5;

-- 1. Date range of the table
SELECT MIN(order_date) AS first_order,
	MAX(order_date) AS last_order
FROM order_details;

-- 2. Number of orders made within this date range
SELECT COUNT(DISTINCT order_id) AS number_of_orders
FROM order_details;

-- 3. Number of items ordered within this date range
 SELECT COUNT(*) AS number_of_items
FROM order_details;

-- 4. Orders with the most number of items
 SELECT order_id,COUNT(item_id) AS number_of_items
FROM order_details
GROUP BY order_id
ORDER BY number_of_items DESC;

-- 5. Number of orders with more than 12 items
SELECT COUNT(*) AS number_of_orders
FROM
(SELECT order_id,COUNT(item_id) AS number_of_items
FROM order_details
GROUP BY order_id
HAVING number_of_items>12) AS num_orders;