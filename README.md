# 🍽️ Restaurant Order Analysis

> This project uses SQL to analyze restaurant order data, exploring menu items, pricing, ordering patterns, and customer spending.
> The goal is to uncover meaningful insights that can help understand restaurant sales and support business decisions.

<br>

## 💼 Business Problem

Taste of the World Café recently introduced a new menu and wants to know how it is performing. Management needs data-backed answers to questions such as:

- Which menu items are ordered most frequently, and which are ordered least?
- Which orders generate the highest spending?
- What do the highest-spending orders look like?

Without this insight, the restaurant risks keeping underperforming dishes, under-promoting its best sellers, and missing pricing opportunities.

<br>

## 🎯 Objectives

- **Menu Items Exploration:** Count menu items, find the cheapest and most expensive dishes, and compare dish counts and average prices across cuisine categories.
- **Order Items Exploration:** Identify the date range, total orders and items ordered, and orders with the most items.
- **Order Details Analysis:** Find the most and least popular dishes and cuisines, and the top 5 highest-spending orders.

<br>

## 💡Key Findings
#### 1. Menu Items Exploration
  - The restaurant offers **32 dishes** across four categories, with Italian and Mexican having the largest selections (9 dishes each).
  - Menu prices range from **$5.00** (Edamame) to **$19.95** (Shrimp Scampi).
  - Italian has 9 dishes, priced between $14.50 and $19.95, placing it at the higher end of the menu's price range.
  - **Italian has the highest average dish price ($16.75)**, followed by Asian ($13.48), Mexican ($11.80), and American ($10.07).

> The menu caters to a range of budgets, offering both affordable and premium-priced dishes. American dishes are the most affordable, while Italian dishes occupy the premium end of the menu. Italian and Mexican also have the largest menu selections.

#### 2. Orders Exploration
  - The dataset covers a three-month period, from **January 1, 2023**, to **March 31, 2023**.
  - A total of **5,370** unique orders were recorded during the three-month period. These orders consisted of 12,234 individual items.
  - The largest orders contained **14 items**, with several orders reaching this quantity. **A total of 20 orders contained more than 12 items**.

> Only 20 out of 5,370 orders (approximately 0.37%) contained more than 12 items, indicating that customers generally place smaller orders rather than ordering in large quantities.
  
#### 3. Order Details Analysis
  - **Hamburger was the most ordered menu item**, with 622 times, closely followed by Edamame with 620. Chicken Tacos was the least ordered named item, with 123 orders.
  - Order 440 recorded the highest spending at $192.15, followed by orders 2075 ($191.05) and 1957 ($190.10).
  - The top five orders each had a total spend above $185.
  - Italian dishes accounted for 8 of the 14 items in the highest-spending order (Order 440).
  - Across the top five highest-spending orders, **Italian dishes were the most frequently represented category**, with 26 items, followed by Asian (17), Mexican (16), and American (10).

> Hamburger and Edamame are popular menu choices, while Italian dishes make up the largest share of items in the highest-spending orders.

<br>

## 🛠️ Tools & Technologies
  - MySQL
    
<br>

## 📂Dataset
Restaurant orders dataset (Maven Analytics) with  12,266 rows and 8 fields across multiple tables.

<br>

## 🔮Future Enhancements
  - Revenue Analysis: Analyze revenue by menu item and cuisine category to identify the biggest contributors to sales.
  - Monthly Sales Trends: Explore changes in order volume and revenue over time.
  - Data Visualization: Build an interactive dashboard in Power BI or Tableau to present key findings.
    
<br>

## 💙Acknowledgments
Completed as part of a Restaurant Order Analysis guided SQL project in the  Maven Analytics. Thanks to Maven Analytics for providing the dataset and structured learning experience.
