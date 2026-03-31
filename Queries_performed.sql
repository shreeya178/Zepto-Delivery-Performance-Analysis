--- Questions Performed based on my project --- 

--- 1. Total Number of orders in zepto ---
SELECT COUNT(Order_ID) AS Total_Orders FROM Sheet1;

--- 2. Total Sales in zepto ---
SELECT SUM(Sales) AS Total_Sales FROM Sheet1;

--- 3. Find Average delivery days in your project ---
SELECT AVG(Delivery_Days) AS Avg_Delivery FROM SHeet1;

--- 4. Find Total Number of unique Products ---
SELECT COUNT(DISTINCT(Product_Name)) AS Unique_product FROM Sheet1;

--- 5. Count the orders by category ---
SELECT Category, COUNT(Order_ID) AS Total_orders FROM Sheet1 GROUP BY Category;

--- 6. Find Total orders by region ---
SELECT Region,COUNT(Order_ID) AS RTotal_orders FROM Sheet1 GROUP BY Region;

--- 7. Find AVG Delivery days per product ---
SELECT Product_Name , AVG(Delivery_Days) FROM Sheet1 GROUP BY Product_Name;

--- 8. Find Fastest Delivery Product ---
SELECT Product_Name , MIN(DATEDIFF(Delivery_Dates,Order_Date)) AS Fastest_Delivery
FROM Sheet1
GROUP BY Product_Name
ORDER BY Fastest_Delivery DESC LIMIT 1;

--- 9. Find Slowest Delivery Product ---
SELECT Product_Name , MAX(DATEDIFF(Delivery_Dates,Order_Date)) AS Slowest_Delivery
FROM Sheet1
GROUP BY Product_Name
ORDER BY Slowest_Delivery ASC LIMIT 1;

--- 10. Top 5 Products By Sales ---
SELECT Product_Name, SUM(Sales) AS Total_Sales 
FROM Sheet1
GROUP BY Product_Name
ORDER BY Total_Sales DESC LIMIT 5;

--- 11. Bottom 5 Products By Sales ---
SELECT Product_Name, SUM(Sales) AS Total_Sales 
FROM Sheet1
GROUP BY Product_Name
ORDER BY Total_Sales ASC LIMIT 5;

--- 12. Category wise total sales ---
SELECT Category , SUM(Sales) AS Total_Sales 
FROM Sheet1
GROUP BY Category
ORDER BY Total_Sales;

--- 13. Find region wise avg delivery ---
SELECT Region, AVG(Delivery_Days) AS Average_Delivery
FROM Sheet1
GROUP BY Region;

--- 14. Give query for orders count by ship mode---
SELECT Ship_Mode, COUNT(ORDER_ID) AS Order_Count
FROM Sheet1
GROUP BY Ship_Mode;

--- 15. Find top 5 fastest delivery products ---
SELECT Product_Name , MIN(DATEDIFF(Delivery_Dates,Order_Date)) AS Fastest_Delivery
FROM Sheet1
GROUP BY Product_Name
ORDER BY Fastest_Delivery ASC LIMIT 5;

--- 16. Top 5 slowest delivery products ---
SELECT Product_Name , MAX(DATEDIFF(Delivery_Dates,Order_Date)) AS Slowest_Delivery
FROM Sheet1
GROUP BY Product_Name
ORDER BY Slowest_Delivery DESC LIMIT 5;

--- 17. Find Sales Distribution by Category ---
SELECT Category , SUM(Sales)*100.0 / (SELECT SUM(Sales) FROM Sheet1) AS Percent 
FROM Sheet1
GROUP BY Category;

--- 18. Find zepto monthly sales trend ---
SELECT SUM(Sales) AS Total_Sales , MONTH(Order_Date) AS Zepto_month 
FROM Sheet1
GROUP BY Zepto_month;

--- 19. Show impact of ship mode on delivery time ---
SELECT Ship_Mode, AVG(DATEDIFF(Delivery_Dates,Order_Date)) AS Avg_delivery
FROM SHeet1
GROUP BY Ship_Mode;

--- 20. Show Delivery performance by region ---
SELECT Region ,
	AVG(DATEDIFF(Delivery_Dates,Order_Date)) AS Avg_delivery,
    MIN(DATEDIFF(Delivery_Dates,Order_Date)) AS Fast_delivery,
    MAX(DATEDIFF(Delivery_Dates,Order_Date)) AS Slow_delivery
FROM Sheet1
GROUP BY Region;




