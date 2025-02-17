CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    DECLARE result int;
    SET N = N-1;

    SELECT DISTINCT SALARY INTO result
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 offset N;

    RETURN result;
END

