-- 1. combine the menu_item and order_detail into single table

select * 
from menu_items;

select * 
from order_details;

select *
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id;

-- 2. what were the least and most ordered items? what category they were in.

select item_name ,category, count(item_id)as num_purchase
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id
group by item_name,category
order by num_purchase 
;


select item_name ,category, count(item_id)as num_purchase
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id
group by item_name , category
order by num_purchase desc
;

-- 3. what are the top 5 orders that spent most money.

select order_id,sum(price) as spent
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id
group by order_id
order by spent desc
limit 5;

-- 4. view the detail of highest spend orders.what insight can you gather from

select category , count(item_id)
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id
where order_id=440
group by category
;


-- 5. view the detail of top 5 highest spend orders. what insight can you gather from
select category , count(item_id)
from order_details as od
left join menu_items as me
on od.item_id=me.menu_item_id
where order_id in (440,2075,1957,330,2675)
group by category
;


440
2075
1957
330
2675      