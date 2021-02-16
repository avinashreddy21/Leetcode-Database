SELECT
e1.Name AS "Employee"
FROM Employee e1 JOIN Employee e2
ON e1.ManagerId = e2.Id
    AND e1.Salary > e2.Salary
;

# JOIN returns records that have matched values in both tables.