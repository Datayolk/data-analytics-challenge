SELECT v.FuelType, COUNT(st.TransactionID) AS TotalSales
FROM SalesTransaction st
JOIN Vehicle v ON st.VehicleID = v.VehicleID
WHERE strftime('%Y', st.SaleDate) = '2023' AND v.FuelType IN ('Electric', 'Petrol')
GROUP BY v.FuelType;