# Write your MySQL query statement below
with rankedsal as (
SELECT d.name as Department,e.name as Employee,e.salary as Salary,
dense_rank() over(partition by d.name order by e.salary desc) as r
from 
employee e inner join department d 
on e.departmentid = d.id
)

select department,employee, salary
from rankedsal
where r<=3;