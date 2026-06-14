select *,ROUND(((curr_year_spend/prev_year_spend -1)*100),2) as yoy_rate from
(SELECT 
    EXTRACT(YEAR FROM u2.transaction_date) AS year,
    u2.product_id,
    u2.spend AS curr_year_spend,
    u1.spend AS prev_year_spend
FROM user_transactions u1
right JOIN user_transactions u2
    ON u1.product_id = u2.product_id
   AND u1.transaction_date + INTERVAL '1 year' = u2.transaction_date) as a