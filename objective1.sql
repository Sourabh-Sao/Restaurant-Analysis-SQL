use restaurant_db;

-- 1. view the menu_item table.

select *
from menu_items;

-- 2. Find the number of items on the menu

select count(menu_item_id)
from menu_items;

-- or

select count(*) as Number_of_Item
from menu_items;

-- 3. what are the least and most expensive item on the menu?

-- least expensive 
select *
from menu_items
order by price;

-- or to see only one record of least expensive item 
select *
from menu_items
order by price
limit 1;

-- expensive item
select *
from menu_items
order by price desc;

-- or
select *
from menu_items
order by price desc
limit 1;

-- 4. How many italian dishes are on the menu?

select count(*) as Number_of_Italian
from menu_items
where category='Italian';

-- 5. What are the least and most expensive Italian dishes on the menu?   

-- Most Expensive 
select *
from menu_items
where category='Italian'
order by price desc;

select *
from menu_items
where category='Italian'
order by price desc
limit 1;

-- Least Expensive
select *
from menu_items
where category='Italian'
order by price ;

select *
from menu_items
where category='Italian'
order by price 
limit 1;


-- 6. How many dishes are in each category
select category,count(item_name)as Dishes
from menu_items
group by category;


-- 7. What is the average dish price within each category?
select category,avg(price)as avg_price
from menu_items
group by category;
     