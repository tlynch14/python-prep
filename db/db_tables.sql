-- Joining Tables

-- Inner Join
SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine';

-- Left Join
SELECT * 
FROM newspaper 
LEFT JOIN online 
  ON newspaper.id = online.id
LIMIT 5;

-- Primary key - Foreign key
SELECT * 
FROM classes 
JOIN students
  ON classes.id = students.class_id;


SELECT * 
FROM newspaper 
CROSS JOIN months
WHERE start_month <= month AND end_month >= month;

-- Union
SELECT *
FROM table1
UNION
SELECT *
FROM table2;


-- Within 
WITH previous_query AS (
   SELECT customer_id,
      COUNT(subscription_id) AS 'subscriptions'
   FROM orders
   GROUP BY customer_id
)
SELECT customers.customer_name, 
   previous_query.subscriptions
FROM previous_query
JOIN customers
  ON previous_query.customer_id = customers.customer_id;