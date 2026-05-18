select category_name,product_name
from 
(SELECT *,rank() over(partition by category_name order by sales_quantity DESC,rating DESC) FROM products
join product_sales
on products.product_id=product_sales.product_id) as a
where rank =1
