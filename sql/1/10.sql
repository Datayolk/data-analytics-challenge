SELECT CampaignName, (SUM(Engagement) - LAG(SUM(Engagement)) OVER (ORDER BY Month)) / LAG(SUM(Engagement)) OVER (ORDER BY Month) * 100 AS PercentEngagement
FROM Campaign
WHERE Month > 1
GROUP BY CampaignName
HAVING PercentEngagement > 20;