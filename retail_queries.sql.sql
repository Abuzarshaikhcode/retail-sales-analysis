DESCRIBE retail_data;

-- Monthly Revenue-- 
SELECT
    YEAR(InvoiceDate) AS Year,
    MONTH(InvoiceDate) AS Month,
    SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY YEAR(InvoiceDate), MONTH(InvoiceDate);

-- Top 10 Customers
SELECT CustomerID,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;

-- Top Countries
SELECT Country,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY Country
ORDER BY Revenue DESC;

-- Average Order Value
SELECT
AVG(order_total)
FROM
(
SELECT InvoiceNo,
SUM(Revenue) AS order_total
FROM retail_data
GROUP BY InvoiceNo
) t;

-- Customer Lifetime Value
SELECT CustomerID,
SUM(Revenue) AS CLV
FROM retail_data
GROUP BY CustomerID
ORDER BY CLV DESC;

-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue
FROM retail_data;

-- Monthly Revenue Trend
SELECT
YEAR(InvoiceDate) AS Year,
MONTH(InvoiceDate) AS Month,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY YEAR(InvoiceDate), MONTH(InvoiceDate)
ORDER BY Year, Month;

-- Top 10 Customers
SELECT
CustomerID,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY CustomerID
ORDER BY Revenue DESC
LIMIT 10;

-- Customer Lifetime Value
SELECT
CustomerID,
SUM(Revenue) AS CLV
FROM retail_data
GROUP BY CustomerID
ORDER BY CLV DESC;

-- Top Products
SELECT
Description,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY Description
ORDER BY Revenue DESC
LIMIT 10;

-- Most Sold Products
SELECT
Description,
SUM(Quantity) AS Qty
FROM retail_data
GROUP BY Description
ORDER BY Qty DESC
LIMIT 10;

-- Country Analysis
SELECT
Country,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY Country
ORDER BY Revenue DESC;

-- Time Analysis
SELECT
Hour,
SUM(Revenue) AS Revenue
FROM retail_data
GROUP BY Hour
ORDER BY Revenue DESC;