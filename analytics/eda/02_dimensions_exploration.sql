/*
===============================================================================
STEP 2: DIMENSIONS EXPLORATION
===============================================================================
Purpose:
    - To explore the structure of dimension tables.
    - Identify the distinct values (categories) for key business dimensions
      such as customer country and product category.
 
Tables Used:
    - gold.dim_customers
    - gold.dim_products
===============================================================================
*/
 
-- Explore All Countries our customers come from
SELECT DISTINCT country FROM gold.dim_customers;
 
-- Explore All Categories "The major Divisions"
SELECT DISTINCT category FROM gold.dim_products;
 
SELECT DISTINCT category, subcategory, product_name FROM gold.dim_products
ORDER BY 1, 2, 3;
