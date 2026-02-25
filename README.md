# 📊 SUPPLY CHAIN PERFORMANCE ANALYSIS (SQL PROJECT)
## Project Summary

This project explores a supply chain dataset to evaluate business performance using SQL Server.

The objective was to analyze revenue generation, product sales, supplier efficiency, and shipping carrier performance to uncover actionable business insights.

### 🧰 Tech Stack

✔ SQL Server
✔ Aggregate Functions
✔ Data Grouping & Segmentation

### 📂 Dataset Description

The dataset contains information on:

✔ Products

✔ Revenue

✔ Quantities Sold

✔ Suppliers

✔ Shipping Carriers

✔ Shipping Costs

✔ Delivery Times

### 📈 Business Questions Answered

✔ What is the total revenue generated?

✔ How many products were sold?

✔ What is the average revenue per transaction?

✔ Which suppliers perform best?

✔ Which shipping carriers are most efficient?

✔ What are the revenue trends by product category?

### 🧠 Key SQL Concepts Applied

✔ SUM()
✔ AVG()
✔ ROUND()
✔ GROUP BY
✔ ORDER BY
✔ Aggregate filtering

### 💻 Sample Queries

#### 🔹 Total Revenue

SELECT 
    SUM(Revenue) AS Total_Revenue
FROM supply_chain_data;

#### 🔹 Products Sold by Category

SELECT 
    Product_Type,
    SUM(Number_of_Products_Sold) AS Total_Products_Sold
FROM supply_chain_data
GROUP BY Product_Type
ORDER BY Total_Products_Sold DESC;

#### 🔹 Average Revenue per Product Type

SELECT 
    Product_Type,
    ROUND(AVG(Revenue), 2) AS Avg_Revenue
FROM supply_chain_data
GROUP BY Product_Type;

#### 🔹 Supplier Performance Analysis

SELECT 
    Supplier_Name,
    SUM(Revenue) AS Supplier_Revenue,
    AVG(Shipping_Costs) AS Avg_Shipping_Cost
FROM supply_chain_data
GROUP BY Supplier_Name
ORDER BY Supplier_Revenue DESC;

### 📊 Key Insights

✔ Identified top revenue-generating product categories.

✔ Evaluated supplier contribution to total revenue.

✔ Compared shipping carrier performance.

✔ Measured cost efficiency across suppliers.

### 🚀 What I Learned

✔ Importance of proper aggregation

✔ Why every non-aggregated column must appear in GROUP BY

✔ How SQL can answer real business questions

✔ Translating raw data into strategic insights
<img width="1366" height="768" alt="SQL1" src="https://github.com/user-attachments/assets/21864a30-8a5a-48f1-9bf2-8d40f018a310" />
<img width="1366" height="768" alt="SQL2" src="https://github.com/user-attachments/assets/53e07b36-2c86-4a2c-a474-6472cdbef38d" />
<img width="1366" height="768" alt="SQL3" src="https://github.com/user-attachments/assets/fad17c4a-2ef6-4e2a-9a1f-054e71461e3c" />

