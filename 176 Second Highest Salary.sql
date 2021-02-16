SELECT 
    IFNULL(
        (SELECT Distinct Salary
        FROM Employee
        ORDER BY Salary Desc
        LIMIT 1 OFFSET 1),
        NULL
    ) as SecondHighestSalary