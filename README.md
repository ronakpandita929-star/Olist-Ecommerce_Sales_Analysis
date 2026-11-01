# Olist E-Commerce Sales Analysis

**End-to-end data analytics project: Excel (data cleaning) → MySQL (analysis) → Power BI (dashboard)**

## 📌 Project Overview

This project analyzes the Brazilian e-commerce dataset from **Olist** to understand sales performance, product and category trends, payment behavior, delivery efficiency, and customer satisfaction.

The workflow covers the full analytics pipeline:

| Stage | Tool | Purpose |
|-------|------|---------|
| 1. Data Cleaning | **Microsoft Excel** | Inspect, clean, and standardize raw CSV files before import |
| 2. Data Analysis | **MySQL 8.0 / Workbench** | Query, validate, and analyze the data with SQL |
| 3. Visualization | **Power BI** | Build the data model, DAX measures, and interactive dashboards |

---

## 🎯 Business Questions

1. How many orders and customers are represented in the data?
2. How does item revenue change month by month?
3. Which products and product categories generate the most revenue?
4. Which payment methods contribute the most payment value?
5. Which customers have the highest item spending?
6. How long does delivery take on average?
7. What percentage of delivered orders arrive late?
8. What does the review-score distribution show?

---

## 🛠️ Tools & Skills Demonstrated

- **Excel:** data cleaning, handling missing values and duplicates, fixing data types and date formats, standardizing text fields
- **MySQL:** joins, aggregations, subqueries, date functions, data-quality checks, validation
- **Power BI:** data modeling, DAX measures, KPI cards, interactive charts, slicers
- **Analytics:** KPI definition, trend analysis, data validation, business storytelling

---

## 🔄 Project Workflow

### 1. Data Cleaning (Excel)
- Reviewed the raw Olist CSV files for missing values, duplicates, and inconsistent formats
- Removed duplicate records and corrected data types (dates, numbers, text)
- Standardized fields to make them ready for database import

### 2. Data Analysis (MySQL)
- Imported the cleaned datasets into MySQL
- Checked row counts and duplicate identifiers
- Created a clean orders table with unique `order_id` values
- Validated order-item uniqueness
- Wrote SQL queries for:
  - Overall business KPIs and order status distribution
  - Monthly sales trends
  - Top products and product-category revenue
  - Customer spending
  - Payment method analysis
  - Review score distribution
  - Average delivery time and late delivery percentage
  - Seller revenue

### 3. Dashboard (Power BI)
- Built a data model connecting orders, items, payments, products, and reviews
- Created DAX measures for revenue, orders, delivery time, and late-delivery rate
- Designed interactive dashboards covering sales, payments and orders, delivery, and reviews

---

## 📊 Key Findings

| Metric | Value |
|--------|-------|
| Total item revenue | **R$ 13.59M** |
| Total payment value | R$ 16.01M |
| Unique orders | **98,666** |
| Units sold | ~113K |
| Highest-revenue month | **Nov 2017** (R$ 1,010,271) |
| Top categories by revenue | `beleza_saude`, `relogios_presentes`, `cama_mesa_banho` |
| Top payment method | **Credit card** (~78.35% of payment value) |
| Boleto share | ~17.92% |
| Average delivery time | **12.50 days** |
| Late delivery rate | **8.11%** |
| Average review score | 4.01 / 5 (available sample) |

### Insights
- **Sales:** Revenue is concentrated in a few categories, so these need strong stock availability and merchandising focus. November 2017 was the peak month, suggesting strong seasonal demand.
- **Payments:** Credit card dominates, with boleto as a meaningful secondary method.
- **Delivery:** About 1 in 12 delivered orders arrives late, so late deliveries are worth investigating by seller, category, and region.
- **Customer satisfaction:** The average review score is above 4, and low ratings should be reviewed alongside delivery delays.

---

## 📈 Dashboard Preview

> Add your Power BI screenshots to an `images/` folder and update the paths below.

| Sales Overview | Payments & Orders |
|----------------|-------------------|
| ![Sales Overview](images/sales_overview.png) | ![Payments & Orders](images/payments_orders.png) |

| Delivery Performance | Customer Reviews |
|----------------------|------------------|
| ![Delivery](images/delivery.png) | ![Reviews](images/reviews.png) |

---

## ⚠️ Data Limitations

- The review table contains only **279 unique reviews**, which is not representative of the full Olist dataset. Review-related findings are preliminary.
- Customer and product-category tables require validation for duplicate imports.
- Metrics should be re-verified after the final data refresh.

---

## 📁 Project Structure

```
Olist-Ecommerce-Sales-Analysis/
├── 01_Raw_Data/          # Original CSV files
├── 02_Cleaned_Data/      # Excel-cleaned files
├── 03_SQL/               # MySQL analysis scripts
├── 04_Database_Backup/   # Database backup
├── 05_PowerBI/           # Power BI report (.pbix)
├── 06_Documentation/     # Business insights and notes
├── images/               # Dashboard screenshots
└── README.md
```

---

## 🚀 How to Reproduce

1. Download the Olist dataset from Kaggle and place the CSV files in `01_Raw_Data/`.
2. Clean the files in Excel (or use the files in `02_Cleaned_Data/`).
3. Import the cleaned data into MySQL and run the scripts in `03_SQL/`.
4. Open the `.pbix` file in `05_PowerBI/` and refresh the data source.

---

## ✅ Conclusion

This project demonstrates a complete analytics workflow: **cleaning data in Excel, analyzing it with MySQL, and presenting insights in Power BI**. It shows the ability to validate data quality, define business KPIs, and turn raw e-commerce data into actionable recommendations on revenue, payments, delivery, and customer satisfaction.

---
