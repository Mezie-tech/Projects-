--SQL QUESTIONS ON CAFE SALES
-- NAME: CHIEMEZIE CHIMEZIE BASIL

--1. What is total revenue and number of transactions? 
select sum(Total_Spent) as Total_Revenue, count(*) as Total_no_of_Transactions 
from [cafe sales group work csv]
--"sum(Total_Spent)" sums up the Total for each transaction in the entire data to give us the total revenue while "count(*)" gives us the total number of transactions

--2. Which items earn the most and least revenue? 
select sum(Total_Spent) as Revenue_Per_Item, Item from [cafe sales group work csv]
group by item
order by Revenue_Per_Item desc
--"sum(Total_Spent)" sums up the Total for each transaction in the entire data to give us the total revenue while "group by item" splits the total revenue to give us the total revenue for each item

--3. Which items sell the most units? 
select top 1 Item, sum(quantity) as Units_Sold from [cafe sales group work csv]
Group by item
order by Units_Sold desc
--"sum quantity" sums up the entire quantities of items bought, "group by item" splits the total quantity into the total quantity bought per item then "order by units sold desc" gives us the total quantity bought per item in decsending order then "select top 1" only selects the first row of the result

--4. What is monthly revenue, and which month performed best? 
--Monthly Revenue is the total amount of sales made per month
select top 1 Month, sum(Total_Spent) as Monthly_Revenue from [cafe sales group work csv]
group by month
order by Monthly_Revenue Desc
--"sum(Total_Spent)" sums up the Total for each transaction in the entire data to give us the total revenue, "group by month" splits the total revenue and gives us the total revenue for each month, "order by monthly revenue desc" gives us the monthly revenue for each month in descending order then "select top 1" selects only the first row of the result

--5. Which day of the week has the highest revenue? 
select top 1 Day_of_Week, sum(Total_Spent) as Weekly_Revenue from [cafe sales group work csv]
group by Day_of_Week
order by Weekly_Revenue desc
--"sum(Total_Spent)" sums up the Total for each transaction in the entire data to give us the total revenue, "group by day of week" splits the total revenue and gives us the total revenue for each day of the week, "order by weekly revenue desc" gives us the weekly revenue for each day of the week in descending order then "select top 1" gives us only the first row of the result 

--6. How does revenue compare between In-store and Takeaway? 
select Location, sum(total_spent) as Revenue_Per_Location, count(*) as No_of_Transactions_Per_Location
from [cafe sales group work csv]
group by Location
order by Revenue_Per_Location
--"sum(Total_Spent)" sums up the Total for each transaction in the entire data to give us the total revenue, count(*) gives us the total number of transactions, "group by location" splits the total revenue and total no. of transactions to give us their respective values for each location 

--7. What share of transactions use each payment method? 
select Payment_Method, count(*) as Transactions_Per_Payment_Method from [cafe sales group work csv]
group by Payment_Method
--"count(*)" gives us the total no. of transactions, "select payment method" gives us the payment methods that were used then "group by payment method" splits the total no.of transactions and gives us the total no. of transaction for each payment method

--8. What is the average transaction value per payment method? 
select Payment_Method, avg(total_spent) as Average_Transaction_Value from [cafe sales group work csv]
group by Payment_Method
--"avg(total_spent)" gives us the average transaction value in the entire data while "group by payment method" gives us the average transaction value for each payment method