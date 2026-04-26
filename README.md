# Supply Chain & Delivery Performance Analysis

## Overview

This project analyzes supply chain operations to identify inefficiencies in **delivery performance, inventory management, and transportation cost**.
The goal is to uncover actionable insights that can help improve operational efficiency and reduce delays.

The analysis follows a complete workflow using **Python for preprocessing, SQL for business analysis, and Power BI for visualization**.

---

## Tools & Technologies

* **Python** – Data preprocessing and feature engineering
* **MySQL** – Business analysis using SQL queries
* **Power BI** – Interactive dashboard and visualization

---

## Dashboard Preview

<img width="1497" height="839" alt="Screenshot 2026-04-26 125634" src="https://github.com/user-attachments/assets/8c52d733-f195-42e7-be66-5ee6d14a1d8a" />


---

## Key Insights

* Certain regions contribute significantly higher sales compared to others
* Transportation costs vary across suppliers, indicating potential cost optimization opportunities
* Delivery delays are observed in specific regions, impacting operational efficiency
* Backorders highlight gaps in inventory planning and demand forecasting
* Warehouse utilization is uneven across locations, indicating inefficiencies

---

## Business Recommendations

* Improve delivery performance by optimizing logistics in high lead-time regions
* Reduce transportation costs by reviewing supplier contracts and routing strategies
* Minimize backorders through better demand forecasting and inventory management
* Balance warehouse utilization by redistributing inventory across locations
* Focus on high-performing regions and categories for better revenue growth

---

## Sample SQL Analysis

```sql
-- Regional Sales Performance
SELECT Region, 
       SUM(`Units Sold`) AS total_units_sold
FROM supply_chain
GROUP BY Region
ORDER BY total_units_sold DESC;
```

This query helps identify top-performing regions and supports strategic inventory allocation.

---

## Project Workflow

1. Data preprocessing using Python
2. Business analysis using SQL
3. Visualization using Power BI

---

## Project Files

* `analysis.ipynb` → Data preprocessing using Python
* `supply_chain_queries.sql` → SQL queries for analysis
* `supply_chain_dashboard.pbix` → Power BI dashboard
* `project_report.pdf` → Detailed analysis with insights
* `business_problem_statement.pdf` → Business context

---

## Summary

This project demonstrates an end-to-end data analysis workflow, focusing on real-world supply chain challenges such as delivery delays, cost optimization, and inventory management.
