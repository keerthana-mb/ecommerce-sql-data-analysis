USE ecommerce_db;
SHOW TABLES;
select count(*)from data;
select * from data limit 10;
select count(*) as total_records from data;
select count(distinct customerid)as unique_customers from data;
select count(distinct stockcode)as unique_products from data;
select description,sum(quantity)as total_quantity_sold from data group by description order by total_quantity_sold desc limit 10;
SELECT
    CustomerID,
    SUM(Quantity * UnitPrice) AS Total_Spent
FROM data
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID
ORDER BY Total_Spent DESC
LIMIT 10;
select count(*) as total_records from data;
set global local_infile = 1;
drop table data;
CREATE TABLE data (
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description TEXT,
    Quantity INT,
    InvoiceDate DATETIME,
    UnitPrice DECIMAL(10,2),
    CustomerID VARCHAR(20),
    Country VARCHAR(100)
);
use ecommerce_db;
LOAD DATA LOCAL INFILE 'C:/Users/hp/OneDrive/Desktop/Task-3-SQL-Data-Analysis/dataset/data.csv'
INTO TABLE data
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country);
drop database if exists ecommerce_db;
CREATE DATABASE blinkit_db;
USE blinkit_db;
drop database if exists blinkit_db;
CREATE DATABASE superstore_db;
USE superstore_db;
SELECT COUNT(*) AS total_records
FROM superstore;
DROP DATABASE IF EXISTS superstore_db;
CREATE DATABASE superstore_db;
USE superstore_db;
SELECT COUNT(*) AS total_records
FROM superstore;
USE superstore_db;
SELECT COUNT(*) AS total_records
FROM `sample-superstore`;
use superstore_db;
show tables;
USE superstore_db;
SELECT COUNT(*) AS total_records
FROM `sample-superstore`;
rename table  `sample-superstore` to sample_superstore;
use superstore_db;
show tables;
select count(*) as total_records
from superstore_db;
use superstore_db;
show tables;
USE superstore_db;
SELECT COUNT(*) AS total_records
FROM `sample - superstore`;
SELECT COUNT(*) AS total_records
FROM `sample - superstore`;
SELECT SUM(Sales) AS Total_Sales
FROM `sample - superstore`;
SELECT SUM(Profit) AS Total_Profit
FROM `sample - superstore`;
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Category,
       ROUND(AVG(Sales), 2) AS Average_Sales
FROM `sample - superstore`
GROUP BY Category;
SELECT `Product Name`,
       SUM(Profit) AS Total_Profit
FROM `sample - superstore`
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 5;