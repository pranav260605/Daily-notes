with x as (select cast(measurement_time as DATE) as measurement_day,
measurement_value,
row_number() over(PARTITION BY CAST(measurement_time AS DATE) order by measurement_time)
from measurements)

select measurement_day,
sum(case when row_number%2!=0 then measurement_value else 0 end) as odd_sum,
sum(case when row_number%2=0 then measurement_value else 0 end) as even_sum
from x
group by measurement_day

--learnt about cast key word









