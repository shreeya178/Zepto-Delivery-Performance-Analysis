# Zepto-Delivery-Performance-Analysis (SQL + Power BI)

This project focuses on analyzing delivery performance and sales data using SQL and Power BI. The goal was to derive meaningful insights such as fastest and slowest deliveries, product performance, and regional trends.

- Tools & Technologies
        SQL (MySQL)
        Power BI
        Excel (initial dataset)
  
- Project Workflow :
    1. Data was initially stored in Excel
    2. Migrated dataset to MySQL for structured querying
    3. Performed data cleaning and transformation in SQL
    4. Created calculated fields like delivery days using date functions
    5. Imported SQL data into Power BI
    6. Built interactive dashboards and KPIs using DAX
       
- Key Analysis Performed
    Average delivery time analysis
    Fastest and slowest product deliveries
    Top 5 and bottom 5 products by sales
    Category-wise and region-wise performance
    Monthly sales trends
    Late delivery percentage
    Impact of shipping mode on delivery time
  
- Key Learnings
    Difference between calculated columns and measures in Power BI
    Importance of context in DAX calculations
    How to integrate SQL with Power BI
    Handling data consistency issues for better insights
    Choosing correct aggregation (MIN/MAX vs AVERAGE)
  
- Challenges Faced
    Initial issue with same delivery averages across products
    Fixed by adjusting logic and using correct metrics
    Data type and SQL-Power BI connection errors
    Ensuring consistency between SQL and Power BI calculations
  
- Dashboard Features
Executive Overview
Project Overview
Insights Page
KPI Cards (Sales, Delivery Metrics)
Top/Bottom Product Analysis

Conclusion:
This project demonstrates an end-to-end workflow of data analysis — from raw data handling in SQL to building interactive dashboards in Power BI for business insights.
