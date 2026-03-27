select * from dbo.engagement_data
-- --------------------------------------------------------------------------------------
select
engagementId,
contentId,
CampaignId,
ProductId,
upper(replace(ContentType,'socialmedia','Social media'))as ContentType,
left(viewsclicksCombined,charindex('-',viewsclickscombined)-1) as views, 
right(viewsclicksCombined,len(viewsclickscombined)-charindex('-',viewsclickscombined)) as clicks,
likes,
format(convert(Date,engagementdate),'dd.mm.yyyy')as engagementdate
from
dbo.engagement_data
where
Contenttype !='Newsletter';