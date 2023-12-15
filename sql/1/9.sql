SELECT CampaignName, (SUM(Clicks) / SUM(Impressions)) * 100 AS CTR
FROM Campaigns
GROUP BY CampaignName;