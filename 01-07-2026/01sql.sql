SELECT user_id,tweet_date,ROUND(avg(tweet_count)over(partition by user_id order by tweet_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
),2)as rolling_avg                                             
FROM tweets;


