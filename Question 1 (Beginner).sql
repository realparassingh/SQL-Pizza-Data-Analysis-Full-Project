-- Beginner -> Retrieve the total number of orders placed

use pizzahut;
SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;