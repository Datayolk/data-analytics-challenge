SELECT EmployeeID, EmployeeName
FROM Employees
WHERE DATEDIFF(NOW(), HireDate) > 5*365;