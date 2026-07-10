/*
===============================================================================
STEP 3: DATE EXPLORATION
===============================================================================
Purpose:
    - To determine the temporal boundaries (earliest and latest dates) of
      key data points, such as order dates and customer birthdates.
    - To understand the range of historical data and the age range of
      customers.
 
Functions Used:
    - MIN(), MAX(), DATEDIFF()
 
Tables Used:
    - gold.fact_sales
    - gold.dim_customers
===============================================================================
*/
 
-- Find the date of the first and last order
-- How many years/months of sales are available
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(year, MIN(order_date), MAX(order_date)) AS order_range_years,
    DATEDIFF(month, MIN(order_date), MAX(order_date)) AS order_range_months
FROM gold.fact_sales;
 
-- Find the youngest and the oldest customers
SELECT
    MIN(birthdate) AS oldest_birthdate,
    DATEDIFF(year, MIN(birthdate), GETDATE()) AS oldest_age,
    MAX(birthdate) AS youngest_birthdate,
    DATEDIFF(year, MAX(birthdate), GETDATE()) AS youngest_age
FROM gold.dim_customers;
