SELECT 
sum(case when device_type='laptop' then 1 else 0 end) as laptop_views,
sum(case when device_type in ('tablet','phone') THEN 1 ELSE 0 END) AS mobile_views 
FROM viewership;
                






