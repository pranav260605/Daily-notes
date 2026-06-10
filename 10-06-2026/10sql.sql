SELECT 
  age_bucket, 
  ROUND(100.0 * send_timespent / (send_timespent+open_timespent), 2) AS send_perc, 
  ROUND(100.0 * open_timespent / (send_timespent+open_timespent), 2) AS open_perc 
FROM
(SELECT age_bucket,
sum(CASE WHEN activities.activity_type = 'send' 
      THEN activities.time_spent ELSE 0 END) AS send_timespent,
     sum(CASE WHEN activities.activity_type = 'open' 
      THEN activities.time_spent ELSE 0 END) AS open_timespent
FROM activities
INNER JOIN age_breakdown 
ON activities.user_id = age_breakdown.user_id
WHERE activities.activity_type IN ('send', 'open') 
group by age_bucket) as six




