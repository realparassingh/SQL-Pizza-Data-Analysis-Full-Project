-- Intermediate -> Determine the distribution of orders by hour of the day

use pizzahut

SELECT 
    HOUR(time), COUNT(order_id)
FROM
    orders
GROUP BY HOUR(time);