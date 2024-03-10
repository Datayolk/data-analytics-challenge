SELECT VehicleType, COUNT(TransactionID) AS TotalSales
FROM SalesTransaction
JOIN Vehicle ON SalesTransaction.VehicleID = Vehicle.VehicleID
GROUP BY VehicleType
ORDER BY TotalSales DESC;