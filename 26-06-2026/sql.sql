SELECT category,product,total_spend from
(SELECT category,product,sum(spend) as total_spend,
rank()over(
partition by category order by sum(spend) desc) as ranking
FROM product_spend
WHERE EXTRACT(YEAR FROM transaction_date) = 2022
GROUP BY category, product) as X 
where ranking<=2;
