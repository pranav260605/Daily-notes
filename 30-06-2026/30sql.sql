SELECT c.customer_id
FROM customer_contracts c
JOIN products p
    ON c.product_id = p.product_id
WHERE p.product_category IN ('Analytics', 'Containers', 'Compute')
GROUP BY c.customer_id
HAVING COUNT(DISTINCT p.product_category) = 3;