# Twillight Coffee Shop Sales Performance Analysis
>A comprehensive Data Analysis using Excel, SQL SSMS & Power BI covering from January to December 2023
## Key Metrics at a Glance
|Total Revenue|Total Transactions|Units Sold|Average Transaction Value|
|-------------|------------------|----------|-------------------------|
|88,952|10,000|30141|8.93|
## 1. Introduction
This report presents a comprehensive data analysis of the cafe's sales performance spanning from January 2023 to December 2023. The analysis focuses on key performance indicators, product performance, monthly sales trend, customer purchasing patterns, payment method and sales locations.
## 2. Dataset Overview
The dataset consists of **10 columns** and **10000 rows** containing **10000** transaction records representing the sales activities of a cafe over a one year period from January to December 2023. The dataset provides information about the cafe's daily transactions, products sold, quantities purchased, revenue generated, payment method and sales location. It serves as the primary source of information for evaluating the cafe's sales performance and identifying patterns that can support business decision making.
The columns and their properties are presented below
|**Column**|**Description**
|----------|-------------|
|Transaction ID| Unique Identification number assigned to each transaction
|Item| Name of the product purchased
|Quantity| Number of units purchased in each transaction
|Price per unit| Price of an individual product
|Total Spent| Total amount spent on each transaction
Payment Method| Method used by customers to make payments
Location| Sales channel, either in-store or takeaway
Transaction Date| Date on which the transaction occured
Month| Month in which the transaction occured
Day of week| Day in which the transaction occcured
## Data quality
During the data preparation stage, the dataset was examined for missing and unidentified values. Several columns contained missing and unidentified values such as 'error', 'unknown' and nulls ie blank spaces. To maintain data accuracy and reliability, different cleaning techniques were applied depending on the nature of the column. Unidentified values were replaced with 'UNKNOWN'. 
Where possible, missing Total Spent, Quantity and Price Per Unit were calculated using the available Total Spent, Quantity and Price Per Unit information and applying appropriate formulas. Additionally, Month and Day of week were derived from valid Transaction date records. These procedures helped improve the quality and consistency of the dataset before analytical querying and visualization in SSMS and Power BI respectively
## 3. Executive Summary
Salad is the highest revenue-generating product, contributing **19,070** to the cafe's total recorded revenue of **88,952**. This represents that Salad is the strongest product in terms of revenue and represents a major contributor to the cafe's sales performance. Cookie recorded the lowest revenue among identified products with **3589**. Interestingly, Coffee recorded the highest quantity sold, demonstrating that the most frequently purchased product is not necessarily the highest revenue generator.        
## 4. Data and Methodology
### Analytical Tools & Pipeline
This project followed a structured three stage pipeline:
|**Stage**|**Tool**|**Activities**|
|---------|--------|--------------|
|1|**Microsoft Excel**| Data importation, inspection, cleaning, formatting, calculation of missing values of Total Spent, Quantity and Price Per Unit where possible using appropriate formulas, derivation of derived columns (Month, Day of week), and further data analysis
|2|**SQL Server (SSMS)**| Structured analytical querying across eight questions including aggregate functions, summary functions (group by) and other functions
|3|**Power BI**| Creation of interactive dashboard with KPI cards/bar/line/donut/column charts, slicers and conditional formating
