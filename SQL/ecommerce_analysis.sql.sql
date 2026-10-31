
USE ecommerce_sales;

-- 1. Total revenue and unique orders
SELECT
    ROUND(SUM(i.price), 2) AS total_item_revenue,
    COUNT(DISTINCT i.order_id) AS orders_with_items
FROM olist_order_items_dataset i
JOIN olist_orders_clean o
    ON i.order_id = o.order_id;

-- 2. Monthly sales trend
SELECT
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS sales_month,
    ROUND(SUM(i.price), 2) AS monthly_revenue
FROM olist_orders_clean o
JOIN olist_order_items_dataset i
    ON o.order_id = i.order_id
WHERE o.order_purchase_timestamp IS NOT NULL
GROUP BY sales_month
ORDER BY sales_month;

-- 3. Top 10 products by revenue
SELECT
    product_id,
    ROUND(SUM(price), 2) AS product_revenue
FROM olist_order_items_dataset
GROUP BY product_id
ORDER BY product_revenue DESC
LIMIT 10;

-- 4. Top 10 product categories by revenue
SELECT
    COALESCE(p.product_category_name, 'Unknown') AS category,
    ROUND(SUM(i.price), 2) AS category_revenue
FROM olist_order_items_dataset i
JOIN olist_products_dataset p
    ON i.product_id = p.product_id
GROUP BY category
ORDER BY category_revenue DESC
LIMIT 10;

-- 5. Payment method analysis
SELECT
    payment_type,
    COUNT(*) AS payment_records,
    ROUND(SUM(payment_value), 2) AS total_payment_value
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY total_payment_value DESC;

-- 6. Order status analysis
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM olist_orders_clean
GROUP BY order_status
ORDER BY total_orders DESC;

-- 7. Average delivery time in days
SELECT
    ROUND(AVG(DATEDIFF(
        order_delivered_customer_date,
        order_purchase_timestamp
    )), 2) AS average_delivery_days
FROM olist_orders_clean
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
  AND order_purchase_timestamp IS NOT NULL;

-- 8. Late delivery percentage
SELECT
    COUNT(*) AS delivered_orders,
    SUM(order_delivered_customer_date >
        order_estimated_delivery_date) AS late_orders,
    ROUND(
        100.0 * SUM(order_delivered_customer_date >
                    order_estimated_delivery_date)
        / NULLIF(COUNT(*), 0),
        2
    ) AS late_delivery_percentage
FROM olist_orders_clean
WHERE order_status = 'delivered'
  AND order_delivered_customer_date IS NOT NULL
  AND order_estimated_delivery_date IS NOT NULL;

-- 9. Review score distribution
SELECT
    review_score,
    COUNT(*) AS review_count,
    ROUND(
        100.0 * COUNT(*) /
        (SELECT COUNT(*)
         FROM olist_order_reviews_dataset
         WHERE review_score BETWEEN 1 AND 5),
        2
    ) AS percentage
FROM olist_order_reviews_dataset
WHERE review_score BETWEEN 1 AND 5
GROUP BY review_score
ORDER BY review_score;

-- 10. Average review score
SELECT
    ROUND(AVG(review_score), 2) AS average_review_score,
    COUNT(*) AS available_reviews
FROM olist_order_reviews_dataset
WHERE review_score BETWEEN 1 AND 5;

-- 11. Top 10 sellers by revenue
SELECT
    i.seller_id,
    ROUND(SUM(i.price), 2) AS seller_revenue
FROM olist_order_items_dataset i
GROUP BY i.seller_id
ORDER BY seller_revenue DESC
LIMIT 10;

-- 12. Data validation: row counts
SELECT 'Orders' AS table_name, COUNT(*) AS row_count
FROM olist_orders_clean
UNION ALL
SELECT 'Order Items', COUNT(*)
FROM olist_order_items_dataset
UNION ALL
SELECT 'Products', COUNT(*)
FROM olist_products_dataset
UNION ALL
SELECT 'Payments', COUNT(*)
FROM olist_order_payments_dataset
UNION ALL
SELECT 'Reviews', COUNT(*)
FROM olist_order_reviews_dataset;
