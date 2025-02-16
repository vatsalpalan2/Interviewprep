WITH ranked_employees AS (
    SELECT d.name AS department, e.name AS employee, e.salary, 
           DENSE_RANK() OVER (PARTITION BY e.departmentid ORDER BY e.salary DESC) AS temp
    FROM employee e
    INNER JOIN department d ON e.departmentid = d.id
)
SELECT department, employee, salary
FROM ranked_employees
WHERE temp = 1;
