SELECT Platform, AVG(Cost / Clicks) AS AvgCPC
FROM AdPerformance
GROUP BY Platform;