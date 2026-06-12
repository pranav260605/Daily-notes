SELECT app_id,
   ROUND(100.0*sum(CASE WHEN event_type = 'click' then 1 else 0 end) /
   sum(CASE WHEN event_type = 'impression' then 1 else 0 end),2) as ctr
FROM events
WHERE timestamp >= '2022-01-01' 
  AND timestamp < '2023-01-01'
group by app_id;
