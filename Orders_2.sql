use restaurant ; 

with t1 as (select max(order_date)  as Highest_Date, min (Order_date) as Minimum_date  
from 
dbo.order_details)

Select count(Order_id) as Order_count , count(item_id) as Item_Count 
from 
Restaurant.dbo.order_details
inner join t1
on order_date between t1.minimum_date and t1.highest_date ; 

with Ord as (select order_id , 
count(item_id) cnt, 
DENSE_RANK() over (order by count(item_id) desc) as rn 
from Restaurant.dbo.order_details
group by Order_id)

Select Order_id , ord.cnt
from Ord 
where rn = 1; 

select order_id 
from Restaurant.dbo.order_details
group by order_id 
having count(Item_id) > 12; 

