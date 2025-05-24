-- 1. View the order table.

select *
from order_details;

-- 2. What is the date range of the table?

select *
from order_details
order by order_date;

-- or 

select min(order_date) , max(order_date)
from order_details;

-- 3. How many orders were made within this date range?

select  count(distinct order_id)
from order_details;

-- 4. How many items were ordered within this date range?   

select  count(item_id)
from order_details;

-- 5. Which order has most number of items?

select order_id , count(item_id) as num_item
from order_details
group by order_id
order by num_item desc
;

-- 6. How many orders had more than 12 items?   
-- below is solve using subquery 
select count(*)
from
(select order_id , count(item_id) as num_item
from order_details
group by order_id
having num_item>12) as num_order;