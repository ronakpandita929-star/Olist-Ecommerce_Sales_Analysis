# Olist E-commerce Sales Analysis

## Project Overview

This project analyzes Brazilian e-commerce data from Olist using MySQL and Power BI. The goal is to understand sales performance, customer purchasing behavior, product performance, payment preferences, and delivery efficiency.

## Tools Used

- MySQL 8.0
- MySQL Workbench
- Power BI
- SQL: joins, aggregations, subqueries, date functions, data quality checks

## Business Questions

1. How many orders and customers are represented in the data?
2. How does item revenue change month by month?
3. Which products and product categories generate the most revenue?
4. Which payment methods contribute the most payment value?
5. Which customers have the highest item spending?
6. How long does delivery take on average?
7. What percentage of delivered orders arrive late?
8. What does the available review-score distribution show?

## Data Preparation

- Imported Olist datasets into MySQL.
- Checked row counts and duplicate identifiers.
- Created a clean orders table to remove duplicate order IDs.
- Validated order-item uniqueness.
- Investigated customer and category table duplication.
- Identified incomplete review data that requires source-file validation.

## SQL Analysis

The project includes queries for:

- Overall business KPIs
- Order status distribution
- Monthly sales trends
- Top products by revenue
- Product category revenue
- Customer spending
- Payment method analysis
- Review score distribution
- Average delivery time
- Late delivery percentage
- Seller revenue

## Key Findings

Complete this section after running the final queries:

- Total item revenue: [13591643.7]
- Total unique orders: [98666]
- Highest-revenue month: [2017-11	1010271.37]
- Top product/category: [63885]
- Most valuable payment method: [credit _card	12544463.7]
- Average delivery time: [12.50]
- Late delivery percentage: [8.11]
- Average review score in the available sample: [4.01]

## Data Limitations

The review table currently contains only 279 unique reviews, which is insufficient to represent the full Olist review dataset. Review-related findings are preliminary.

Customer and product-category tables also require validation for duplicate imports before their metrics are considered final. Original data and backup tables are preserved for comparison.

## Project Structure

- `01_Raw_Data/` — Original CSV files
- `02_SQL/` — SQL analysis script
- `03_Database_Backup/` — Database backup
- `04_PowerBI/` — Power BI report
- `05_Documentation/` — Project notes and findings

## Conclusion

This project demonstrates the use of SQL to inspect data quality, prepare e-commerce data for analysis, and answer business questions related to revenue, products, customers, payments, and delivery performance. Findings should be finalized after resolving the documented data-import limitations.