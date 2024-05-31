-- For each week,
-- find the total number of orders.Include only the orders that are
-- from the first quarter of 2023.

-- The output should contain 'week' and 'quantity'.

--CODE IN ORACLE SQL
SELECT week, sum(quantity) as total_quantity
FROM orders_analysis
WHERE
    week >= '2023-01-01'
    AND week < '2023-04-01'
GROUP BY
    week
ORDER BY week