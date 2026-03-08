SELECT * FROM customers limit 5;


SELECT gender, SUM(purchase_amount) as Revenue 
FROM customers
GROUP BY gender; 


SELECT customer_id,purchase_amount
FROM customers
WHERE purchase_amount>=(SELECT avg(purchase_amount) FROM customers) AND discount_applied='yes';


select item_purchased, round(avg(review_rating),2) as "Average Product Rating"
from customers
group by item_purchased
order by avg(review_rating) desc
limit 5;


SELECT shipping_type, ROUND(AVG(purchase_amount),2) as Amount 
FROM customers
WHERE shipping_type in ('Express','Standard')
GROUP BY shipping_type ;


SELECT subscription_status,
       COUNT(customer_id) AS total_customers,
       ROUND(AVG(purchase_amount),2) AS avg_spend,
       ROUND(SUM(purchase_amount),2) AS total_revenue
FROM customers
GROUP BY subscription_status
ORDER BY total_revenue,avg_spend DESC;


SELECT item_purchased,
       ROUND((SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*)*100),2) AS discount_rate
FROM customers
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;


with customer_type as (
SELECT customer_id, previous_purchases,
CASE 
    WHEN previous_purchases = 1 THEN 'New'
    WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
    ELSE 'Loyal'
    END AS customer_segment
FROM customers)
select customer_segment,count(*) AS "Number of Customers" 
from customer_type 
group by customer_segment;


WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customers
    GROUP BY category, item_purchased
)
SELECT item_rank,category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;


SELECT subscription_status,
       COUNT(customer_id) AS repeat_buyers
FROM customers
WHERE previous_purchases > 5
GROUP BY subscription_status;


SELECT age_group,
	SUM(purchase_amount) as Revenue
FROM customers
GROUP BY age_group
ORDER BY revenue desc;

