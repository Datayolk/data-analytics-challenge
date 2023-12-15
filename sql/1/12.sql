SELECT DAYNAME(Date) AS DayOfWeek, AVG(Clicks) AS AvgClicks
FROM AdPerformance
GROUP BY DayOfWeek
ORDER BY AvgClicks DESC
LIMIT 1;