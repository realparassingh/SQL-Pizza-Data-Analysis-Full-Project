-- Intermediate -> Join relevant tables to find the category wise distribution of pizzas.

use pizzahut
SELECT 
    pizza_types.category, COUNT(pizza_types.name) AS quantity
FROM
    pizza_types
GROUP BY pizza_types.category
ORDER BY quantity DESC;