/*
=====================================================
        Analyze Order Details
=====================================================

QUESTIONS ANSWERED:
1. What are the least and most ordered menu items, and
   which categories do they belong to?
2. What are the top 5 orders with the highest spending?
3. What items were purchased in the highest-spending order?
4. How many items from each category were included in
   the highest-spending order?
5. How many items from each category were included in
   the top 5 highest-spending orders?

SQL FUNCTIONS / CLAUSES USED:
- SELECT
- LEFT JOIN
- ON
- COUNT()
- SUM()
- GROUP BY
- ORDER BY
- WHERE
- IN
- LIMIT
*/

USE restaurant_db;
SELECT *
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id;

-- 1. Least and most ordered items and list their categories
SELECT item_name,category,COUNT(order_details_id) AS number_of_orders
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name,category
ORDER BY number_of_orders;

SELECT item_name,category, COUNT(order_details_id) AS number_of_orders
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY item_name,category
ORDER BY number_of_orders DESC;

-- 2. Top 5 orders that spent the most money
SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- 3. Details of the highest spend order. Specify the items purchased
SELECT *
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id=440;

-- 4. Number of items from each category in the highest-spending order
SELECT 
    category, COUNT(item_id) AS num_items
FROM
    order_details od
        LEFT JOIN
    menu_items mi ON od.item_id = mi.menu_item_id
WHERE
    order_id = 440
GROUP BY category;

-- 5. Number of items from each category in the top 5 highest-spending orders
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
ON od.item_id=mi.menu_item_id
WHERE order_id IN (440,2075,1957,330,2675)
GROUP BY category;