-- Intermediate -> Group the orders by date and calculate the average number of
-- pizzas ordered per day.

use pizzahut
SELECT 
    ROUND(AVG(quantity), 0) AS average
FROM
    (SELECT 
        orders.date, SUM(order_details.quantity) AS quantity
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.date) AS order_quantity