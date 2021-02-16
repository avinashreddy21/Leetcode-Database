CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N-1;
  RETURN (
      SELECT
      IFNULL((SELECT 
              DISTINCT(Salary) FROM Employee 
              ORDER BY Salary DESC 
              LIMIT 1 OFFSET N), NULL)
  );
END

# Similar to 2nd Highest Salary Problem.
# LIMIT clause is used to select required number of records.
# OFFSET clause determines number of rows to skip before starting to return rows from a query. 