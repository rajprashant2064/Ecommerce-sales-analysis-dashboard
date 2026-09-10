
USE ecommerce_sales;

SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM Cleaned_Superstore;


SELECT
    Year,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY Year
ORDER BY Year;


SELECT
    Year,
    Month_Number,
    Month,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Cleaned_Superstore
GROUP BY Year, Month_Number, Month
ORDER BY Year, Month_Number;


SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;


SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT
    State,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY State
ORDER BY Total_Sales DESC;


SELECT
    `Product Name`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT
    `Customer ID`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY `Customer ID`
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT
    Segment,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;


SELECT
    `Ship Mode`,
    COUNT(DISTINCT `Order ID`) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;


SELECT
    ROUND(Discount, 2) AS Discount_Rate,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY ROUND(Discount, 2)
ORDER BY Discount_Rate;


SELECT
    `Sub-Category`,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Cleaned_Superstore
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;


WITH yearly_sales AS (
    SELECT
        Year,
        SUM(Sales) AS Total_Sales
    FROM Cleaned_Superstore
    GROUP BY Year
)
SELECT
    Year,
    ROUND(Total_Sales, 2) AS Total_Sales,
    ROUND(
        (Total_Sales - LAG(Total_Sales) OVER (ORDER BY Year))
        / NULLIF(LAG(Total_Sales) OVER (ORDER BY Year), 0) * 100,
        2
    ) AS YoY_Growth_Percent
FROM yearly_sales
ORDER BY Year;


SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0) * 100, 2) AS Profit_Margin_Percent
FROM Cleaned_Superstore
GROUP BY Category
ORDER BY Profit_Margin_Percent DESC;