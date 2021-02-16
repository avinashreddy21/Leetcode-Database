WITH Employee1 AS
(
    SELECT Department.Name as Department, Employee.Name as Employee, Employee.Salary as Salary,
    DENSE_RANK() OVER (PARTITION BY Department.Name ORDER BY Employee.Salary DESC) as Sal_Rank
    FROM Employee JOIN Department
    ON Employee.DepartmentId = Department.Id
)
SELECT Department, Employee, Salary
FROM Employee1
WHERE Sal_Rank <= 3
;

# Compute a new table with required columns along with rank column which indicates rank of the employee's salary in a particular department
# Then, select required columns where rank <= 3.