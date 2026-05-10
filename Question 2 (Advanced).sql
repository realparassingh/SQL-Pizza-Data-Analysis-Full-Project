-- Advanced -> Analyze the cumulative revenue generated over time

use pizzahut

select sales.date,
Round(sum(revenue) over(order by sales.date),0) as cum_reven
from 
(select orders.date, 
sum(order_details.quantity * pizzas.price) as revenue
from order_details join pizzas 
on order_details.pizza_id = pizzas.pizza_id join orders
on orders.order_id = order_details.order_id
group by orders.date) as sales;