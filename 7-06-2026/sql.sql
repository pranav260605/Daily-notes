select query_count as unique_queries,count(employee_id) as employee_count
from (SELECT e.employee_id,  COALESCE(COUNT(DISTINCT q.query_id), 0) as query_count FROM employees as e
left join queries as q
on e.employee_id=q.employee_id
and query_starttime >= '2023-07-01T00:00:00Z'
  AND query_starttime < '2023-10-01T00:00:00Z'
group by e.employee_id) as x3
group by query_count
order by query_count
