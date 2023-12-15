SELECT Month, SUM(Sales) OVER (ORDER BY Month) AS CumulativeSales
FROM MonthlySales;