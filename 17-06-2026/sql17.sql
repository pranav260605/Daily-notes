select tweets_count as tweet_bucket,count(tweets_count) as users_num
from (select user_id,count(user_id) as tweets_count 
from tweets
where extract(year from tweet_date)=2022
group by user_id) as x
group by tweets_count







