With x as(
SELECT 
  name,
  salary,
  department_id,
  DENSE_RANK() OVER (
    PARTITION BY department_id ORDER BY salary DESC) AS ranking
FROM employee
)

select department_name,name,salary
from x join department
on x.department_id=department.department_id
where ranking<=3
order by department_name,salary DESC,name 


