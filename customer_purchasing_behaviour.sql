use portfolio;

SELECT 
    *
FROM
    customer_purchases_behavior;
    
    ###Customer Segmentation
## Identify high-spending customers by region
SELECT 
    region, SUM(purchase_amount) AS Total_spend
FROM
    customer_purchases_behavior
GROUP BY region
ORDER BY total_spend DESC;

## Analyze purchase behavior by gender
SELECT 
    gender,
    AVG(purchase_amount) AS avg_expence,
    purchase_frequency
FROM
    customer_purchases_behavior
GROUP BY gender,purchase_frequency;

 ### Product Analysis
## Find the most popular product categories:

SELECT 
    product_category, COUNT(*) AS Total_purchases
FROM
    customer_purchases_behavior
GROUP BY product_category
ORDER BY product_category DESC;

##Identify products with high average purchase amounts:

SELECT 
    product_category AS product_name,
    AVG(purchase_amount) AS avg_purchase_amount
FROM
    customer_purchases_behavior
GROUP BY product_name
ORDER BY avg_purchase_amount DESC;


###Promotion Analysis:
##Analyze the impact of promotions on purchase amount

SELECT 
    loyalty_status,
    product_category,
    COUNT(purchase_frequency) AS purchase_frequency
FROM
    customer_purchases_behavior
GROUP BY loyalty_status , product_category;


###Customer Satisfaction:
##Identify the correlation between satisfaction score and purchase amount:
SELECT 
    satisfaction_score,
    AVG(purchase_amount) AS avg_purchase_amount
FROM
    customer_purchases_behavior
GROUP BY satisfaction_score
ORDER BY satisfaction_score;
