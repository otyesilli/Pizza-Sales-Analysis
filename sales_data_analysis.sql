-- The sum of the total price of all pizza orders --
select sum(total_price) as Total_Revenue from pizza_sales;

-- The average amount spent per order -- 
select sum(total_price) / count(distinct order_id) as AVG_Order from pizza_sales;

-- Total pizzas sold -- 
select sum(quantity) as Total_Pizzas_Sold from pizza_sales;

-- Total Orders -- 
select count(distinct order_id) as Total_Orders from pizza_sales;

-- Average Pizzas per Order
select cast(sum(quantity) as decimal(10,2)) /
cast(count(distinct order_id) as decimal(10,2)) as Avg_Pizzas_perOrder from pizza_sales;

-- Percentage of Pizza Sales by Pizza Category
select pizza_category, sum(total_price) * 100 / (select sum(total_price) from pizza_sales) as PCT
from pizza_sales
group by pizza_category;

