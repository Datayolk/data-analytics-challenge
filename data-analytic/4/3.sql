SELECT s.FirstName, s.LastName, SUM(v.Price) AS TotalRevenue
FROM SalesTransaction st
JOIN Vehicle v ON st.VehicleID = v.VehicleID
JOIN Salesperson s ON st.SalespersonID = s.SalespersonID
GROUP BY s.SalespersonID
ORDER BY TotalRevenue DESC;