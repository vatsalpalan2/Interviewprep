# Write your MySQL query statement below
select e.name as Employee from 
employee e inner join employee m
on e.managerID=m.id
where e.salary>m.salary