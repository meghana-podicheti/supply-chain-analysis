CREATE DATABASE supply_chain_db;
USE supply_chain_db;
SELECT * FROM supply_chain LIMIT 10;

USE supply_chain_db;

-- Q1. Which region has the highest sales?
SELECT Region, 
       SUM(`Units Sold`) AS total_units_sold
FROM supply_chain
GROUP BY Region
ORDER BY total_units_sold DESC;


-- Q2. Which category generates the most revenue?
SELECT Category, 
       SUM(`Cost of Goods Sold (COGS)`) AS total_revenue
FROM supply_chain
GROUP BY Category
ORDER BY total_revenue DESC;


-- Q3. Which suppliers have the highest transportation cost?
SELECT Supplier, 
       SUM(`Transportation Cost`) AS total_transport_cost
FROM supply_chain
GROUP BY Supplier
ORDER BY total_transport_cost DESC;


-- Q4. What is the average lead time by region?
SELECT Region, 
       ROUND(AVG(`Lead Time (Days)`), 2) AS avg_lead_time
FROM supply_chain
GROUP BY Region
ORDER BY avg_lead_time DESC;


-- Q5. How many delayed vs on-time orders?
SELECT 
    CASE 
        WHEN `Lead Time (Days)` > 5 THEN 'Delayed'
        ELSE 'On Time'
    END AS delay_status,
    COUNT(*) AS total_orders
FROM supply_chain
GROUP BY delay_status;


-- Q6. How many orders are on backorder?
SELECT Backorder, 
       COUNT(*) AS total_orders
FROM supply_chain
GROUP BY Backorder;


-- Q7. Which warehouse has the highest utilization?
SELECT Warehouse,
       ROUND(AVG(`Inventory Level` / `Warehouse Capacity` * 100), 2) AS utilization_percent
FROM supply_chain
GROUP BY Warehouse
ORDER BY utilization_percent DESC;


-- Q8. Which region holds the most inventory?
SELECT Region,
       SUM(`Inventory Level`) AS total_inventory
FROM supply_chain
GROUP BY Region
ORDER BY total_inventory DESC;


-- Q9. Do backorders affect sales?
SELECT Backorder,
       SUM(`Units Sold`) AS total_units
FROM supply_chain
GROUP BY Backorder;


-- Q10. What is the monthly sales trend?
SELECT 
    DATE_FORMAT(`Date`, '%Y-%m') AS month,
    SUM(`Units Sold`) AS total_units
FROM supply_chain
GROUP BY month
ORDER BY month;