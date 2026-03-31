CREATE DATABASE zepto_db; 

USE zepto_db;

CREATE TABLE Sheet1 (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Region VARCHAR(50),
    State VARCHAR(50),
    City VARCHAR(50),
    Category VARCHAR(50),
    Segment VARCHAR(50),
    Product_Name VARCHAR(100),
    Ship_Mode VARCHAR(50),
    Quantity INT,
    Unit_Price float,
    Discount FLOAT,
    Sales FLOAT,
    Profit FLOAT,
    Delivery_Dates DATE,
    Return_Flag INT
);

Select * from Sheet1;

Select Count(Order_ID) from Sheet1 ;

Update Sheet1 SET Sales = Sales + 100000 Where Order_ID = "ORD1" limit 500;

UPDATE SHEET1 SET Delivery_Days = datediff(Delivery_Dates, Order_Date )LIMIT 5000;

UPDATE SHEET1 SET Delivery_Dates = CASE 
WHEN Category = "Snacks" THEN date_add(Order_Date,INTERVAL 1 DAY)
WHEN Category = "Beverages" THEN date_add(Order_Date,INTERVAL 3 DAY)
WHEN Category = "Fruits" THEN date_add(Order_Date,INTERVAL 5 DAY)
ELSE date_add(Order_Date,INTERVAL 7 DAY)
END LIMIT 5000;

ALTER TABLE Sheet1 ADD Delivery_Days INT;

