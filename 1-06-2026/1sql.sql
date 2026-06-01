SELECT COUNT(DISTINCT users) AS repeated_purchasers
FROM (
  SELECT DISTINCT user_id AS users
  FROM purchases
  GROUP BY user_id, product_id
  HAVING COUNT(DISTINCT purchase_date::DATE) > 1
) AS repeat_purchases;

-- learnings are using distinct of date keyword