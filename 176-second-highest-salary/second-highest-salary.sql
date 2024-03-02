# Write your MySQL query statement below
with drtable as(
select *
    , dense_rank() over(order by salary desc) drank
    From Employee
)
Select Max(salary) as SecondHighestSalary
from drtable
where drank = 2
