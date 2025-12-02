use Restaurant; 

----- View the menu table and write a query to find the number of items on the menu ----------------
select count(menu_item_id) as total_item 
from Restaurant.dbo.menu_items; 

-------What are the most and least expensive items on the menu ----------------

with E as (select menu_item_id, item_name , price, 
DENSE_RANK () over (order by price) as rn 
from Restaurant.dbo.menu_items) , 

L as (select menu_item_id, item_name , Price, 
DENSE_RANK () over (order by price desc) as rn 
from Restaurant.dbo.menu_items) 

select E.item_name as most_expensive , E.price as item_price 
from E 
where E.rn = 1
union 
select L.item_name as Lowest_item, L.price as item_price
from L
where L.rn = 1 ; 

------------ How many Italian dishes on the menu ? What are the least and most expensive Italian ------------

Select count(*) 
from Restaurant.dbo.menu_items a 
where a.category = 'Italian' ; 

---------- Select the most expensive Italian --------------
select top 1 a.item_name , a.price
from 
Restaurant.dbo.menu_items a
where a.category = 'Italian'
order by a.price desc ; 

------ select the least expensive italian --------------
Select top 1 a.item_name, a.price 
from 
Restaurant.dbo.menu_items a
where a.category = 'Italian'
order by a.price asc ; 

---------- How many dishes are in each category ------ 
Select a.category, count(a.item_name) as num_of_dishes
from 
restaurant.dbo.menu_items a
group by a.category; 

--------- What is the avg dish price within each category ---------------
Select a.category, 
count(a.item_name) as num_of_dishes, 
round(avg(cast(a.price as numeric (10,2))),2) as avg_dish_price
from 
restaurant.dbo.menu_items a
group by a.category; 










