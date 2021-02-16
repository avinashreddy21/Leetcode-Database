SELECT
d.Name AS Department, e.Name AS Employee, e.Salary AS Salary
FROM Employee e JOIN Department d
ON e.DepartmentId = d.Id
WHERE
(e.DepartmentId, Salary) IN
    (
        SELECT DepartmentId, MAX(Salary)
        FROM Employee
        GROUP BY DepartmentId
    )
;

# Find the group (departmentId, maxSalary) by grouping the table 'Employee' and then JOIN both tables to extract required data.