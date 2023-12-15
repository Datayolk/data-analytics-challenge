SELECT MediaChannel, SUM(Impressions) AS TotalImpressions
FROM Marketing
WHERE Date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY MediaChannel
ORDER BY TotalImpressions DESC
LIMIT 10;