select user_id
from
(SELECT T1.user_id,count(T1.user_id)
FROM transactions T1
join transactions T2
on T1.transaction_date=T2.transaction_date+ INTERVAL '1 day'
group by T1.user_id) as a
where count=2
Order by user_id



