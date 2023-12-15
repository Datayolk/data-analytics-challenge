SELECT EmployeeID, EmployeeName, Salary, DepartmentID
FROM Employees
WHERE Salary > (SELECT AVG(Salary) FROM Employees E2 WHERE E2.DepartmentID = Employees.DepartmentID);