SELECT s.FirstName, s.LastName, COUNT(st.TransactionID) AS TotalTransactions
FROM Salesperson s
JOIN SalesTransaction st ON s.SalespersonID = st.SalespersonID
GROUP BY s.SalespersonID
ORDER BY TotalTransactions DESC
LIMIT 1;