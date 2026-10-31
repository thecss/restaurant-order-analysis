/*
=====================================================
			Explore the Menu Items
=====================================================

QUESTIONS ANSWERED:
1. How many items are available on the menu?
2. What are the least and most expensive items?
3. How many Italian dishes are on the menu?
4. What are the least and most expensive Italian dishes?
5. How many dishes are available in each category?
6. What is the average price of dishes within each category?

SQL FUNCTIONS / CLAUSES USED:
- COUNT()
- AVG()
- WHERE
- ORDER BY
- GROUP BY
- SELECT
*/

USE restaurant_db;

-- View the menu_items table
SELECT *
FROM menu_items;

-- 1. The number of items on the menu
SELECT COUNT(menu_item_id) AS number_of_items
FROM menu_items;

-- 2. Least and the most expensive items on the menu
SELECT item_name,price
FROM menu_items
ORDER BY price;

SELECT item_name,price
FROM menu_items
ORDER BY price DESC;

-- 3.  Number of Italian dishes on the menu
SELECT COUNT(*) AS number_of_italian_dishes
FROM menu_items
WHERE category="Italian";

-- 4. Least and most expensive Italian dishes on the menu
SELECT item_name,price
FROM menu_items
WHERE category="Italian"
ORDER BY price;

SELECT item_name,price
FROM menu_items
WHERE category="Italian"
ORDER BY price DESC;

-- 5. Number of dishes in each category
SELECT category,
		COUNT(*) AS number_of_dishes 
FROM menu_items
GROUP BY category;

-- 6. Average dish prize within each category
SELECT 
    category, AVG(price) AS avg_price_dishes
FROM
    menu_items
GROUP BY category;