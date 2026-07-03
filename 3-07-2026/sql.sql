with X as (select user_id,count(msg) as msg_count
from tweets
where tweet_date between '01-01-2022' and '12-31-2022'
group by user_id)

select msg_count as tweet_bucker,count(msg_count) as user_num
from X
group by msg_count









