SELECT 
    IFNULL(
        (SELECT Distinct Salary
        FROM Employee
        ORDER BY Salary Desc
        LIMIT 1 OFFSET 1),
        NULL
    ) as SecondHighestSalary

# LIMIT clause is used to select required number of records.
# OFFSET clause determines number of rows to skip before starting to return rows from a query. 