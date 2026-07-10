# Exploratory Data Analysis (EDA) on the Gold Layer

After building the SQL data warehouse (Bronze → Silver → Gold), this folder contains
SQL scripts used to explore the **Gold layer** and answer key business questions
about customers, products, and sales.

## 📁 Files

| File | What it covers |
|---|---|
| `01_database_exploration.sql` | Explore all tables and columns in the database |
| `02_dimensions_exploration.sql` | Explore distinct countries, product categories & subcategories |
| `03_date_exploration.sql` | Find the sales date range and the age range of customers |
| `04_measures_exploration.sql` | Core business metrics: total sales, quantity, avg price, orders, products, customers |
| `05_magnitude_analysis.sql` | Group data by country, gender, and category to find distribution & revenue |
| `06_ranking_analysis.sql` | Top 5 / worst 5 products, top 10 customers, customers with fewest orders (using `ROW_NUMBER()`) |

## 🧠 Business Questions Answered
- How many countries and product categories exist in the data?
- What is the total sales, total quantity sold, and average price?
- Which products generate the highest and lowest revenue?
- Who are the top 10 customers by revenue?
- Which customers placed the fewest orders?
- How is revenue distributed across countries and categories?

## 🛠 Techniques Used
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`
- Window functions: `ROW_NUMBER()`
- `GROUP BY`, `ORDER BY`, `TOP N`
- Date functions: `DATEDIFF()`
- `LEFT JOIN` between fact and dimension tables

## 📊 Data Source
Queries run against the **Gold layer** of the warehouse:
- `gold.dim_customers`
- `gold.dim_products`
- `gold.fact_sales`
---
Licence
This project is licensed under the MLT License. You are free to use, modify, and share this project with proper attribution.

About Us
Hi there! I'm Arti Singh, also known as ArtiSinghDA. I'm an Aspiring Data Analyst with a strong academic bacground in Statistics and Research. I'm actively learning and improving every day. Open to entry-level Data Analyst Opportunities.
