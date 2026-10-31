# Olist E-Commerce Sales Analysis --- 

## 1. Project Overview

This project analyzes the Olist e-commerce dataset to understand sales
performance, payment behavior, order trends, delivery performance, and
customer reviews. MySQL is used for data querying and Power BI for data
modeling, DAX measures, and interactive dashboards.

## 2. Tools and Skills

-   **MySQL:** data exploration, joins, aggregations, validation, and
    business analysis.
-   **Power BI:** data modeling, DAX, KPI cards, charts, and interactive
    dashboards.
-   **Analysis areas:** revenue, product categories, payment methods,
    order status, delivery performance, and customer reviews.

## 3. Executive Summary

The current Power BI screenshots show these preliminary metrics:

  Metric                    Current dashboard value
  ----------------------- -------------------------
  Total item revenue                     R\$ 13.59M
  Total payment value                    R\$ 16.01M
  Orders with items                             99K
  Units sold                                   113K
  Average review score                     4.01 / 5
  Average delivery time                  12.50 days
  Late delivery rate                          8.11%
  Total reviews shown                           279

**Important:** These values are transcribed from the current dashboard
screenshots. Recheck them after the final data refresh and after
clearing unintended filters.

Item revenue and payment value are different metrics. Item revenue is
based on item prices, while payment value is based on payment records.
Payment records can contain multiple entries for one order.

## 4. Sales Performance

The Sales Overview page reports approximately **R\$ 13.59M in item
revenue**. The Top 10 Product Categories chart currently shows
categories such as `beleza_saude`, `relogios_presentes`, and
`cama_mesa_banho` among the leading categories by item revenue.

**Business implications:** - Monitor high-revenue categories for stock
availability and merchandising opportunities. - Use monthly revenue
trends to identify seasonal demand and changes in sales. - Compare
category performance over time before planning promotions.

## 5. Payment Analysis

The current Payment Method Analysis visual shows: - Credit card:
approximately **78.35%** of payment value. - Boleto: approximately
**17.92%**. - Voucher: approximately **2.37%**. - Other methods: the
remaining share.

**Business implications:** - Credit card is the dominant payment method
in the current report. - Maintain a reliable card-payment experience and
monitor payment failures. - Continue supporting boleto as a meaningful
secondary method. - Monitor smaller payment methods for changes in
customer preferences.

These percentages should be revalidated after the final refresh.

## 6. Order Analysis

The Payments & Orders page compares payment value by method, order
status, and monthly order volume.

**Business implications:** - Track monthly order volume to identify
seasonal patterns and demand peaks. - Monitor cancelled and unavailable
orders for possible fulfilment or stock issues. - Use distinct counts of
`order_id` when counting orders from tables that can contain multiple
rows per order.

The monthly order-volume chart is final only when its X-axis uses the
chronological `Month Year` field and its Y-axis uses a distinct count of
`order_id`.

## 7. Delivery Performance

The current dashboard reports an **average delivery time of 12.50 days**
and a **late delivery rate of 8.11%**.

The late-delivery rate should be calculated as late delivered orders
divided by all delivered orders. Orders without a delivery timestamp
should be excluded from this denominator.

**Business implications:** - Monitor delivery time over time and across
destinations. - Investigate late deliveries by seller, product category,
geography, and month. - Compare estimated and actual delivery dates to
identify logistics bottlenecks. - Ensure the late-delivery count and
percentage use the same delivered-order population.

## 8. Customer Review Analysis

The dashboard reports an **average review score of 4.01 out of 5**. The
review distribution chart shows ratings from 1 to 5, with the 5-star
group appearing largest in the current screenshot.

**Business implications:** - The average score gives a high-level view
of customer satisfaction. - Review-score distribution helps reveal
negative experiences that an average can hide. - Investigate low ratings
alongside delivery delays, sellers, and product categories. - Analyze
review comments, where available, to identify recurring customer
concerns.

**Data validation warning:** The screenshot shows **279 total reviews**,
while other dashboard metrics show tens of thousands of orders. This
could result from a filter, incomplete review-table import, or a
model/measure issue. Validate the review row count and distinct
`review_id` count in MySQL and Power BI before publishing this as the
dataset-wide total.

## 9. Recommended Business Actions

1.  Monitor inventory and availability in high-revenue product
    categories.
2.  Maintain reliable credit-card payment processing while supporting
    other payment methods.
3.  Investigate late deliveries by seller, destination, and time period.
4.  Review low customer ratings and comments to identify product or
    service issues.
5.  Monitor cancelled and unavailable orders for fulfilment problems.
6.  Reconcile SQL results with Power BI measures before sharing the
    dashboard.

## 10. Data Quality Checklist

-   [ ] Refresh the Power BI model and clear unintended filters.
-   [ ] Confirm `order_id` is unique in the cleaned orders table.
-   [ ] Confirm month fields are sorted chronologically by
    `Month Start`.
-   [ ] Use distinct order counts when tables contain multiple rows per
    order.
-   [ ] Confirm late-delivery count and percentage use the same
    denominator.
-   [ ] Reconcile the review count between MySQL and Power BI;
    investigate the current 279 value.
-   [ ] Confirm item revenue uses item `price` and payment value uses
    `payment_value`.
-   [ ] Confirm date columns are Date/Time and undelivered orders are
    handled consistently.

## 11. Conclusion

The Olist project combines sales, payments, orders, delivery, and
customer feedback in a set of Power BI dashboards. The current report
indicates substantial item revenue, a strong preference for credit-card
payments, an average review score above 4 out of 5, and a measurable
late-delivery rate.

The next priority is to validate the metrics and investigate performance
by month, category, seller, and destination. This will make the
dashboard more reliable and turn its visuals into actionable business
recommendations.

------------------------------------------------------------------------

**Project status:** Dashboard built; final metric validation and
documentation review pending.

**Note:** Update the figures in this document if the final refreshed
report produces different values.
