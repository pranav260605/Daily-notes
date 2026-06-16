select count(pi) 
from (SELECT policy_holder_id,count(case_id) as pi
FROM callers
group by policy_holder_id

HAVING COUNT(case_id) >= 3
order by count(policy_holder_id) DESC) as x

