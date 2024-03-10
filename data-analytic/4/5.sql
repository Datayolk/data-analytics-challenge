SELECT ModelName,
  CASE
    WHEN Price >= 1000000 THEN 'Flagship Model'
    ELSE 'Normal Model'
  END AS ModelLabel
FROM Vehicle
GROUP BY ModelName
ORDER BY ModelName ASC;