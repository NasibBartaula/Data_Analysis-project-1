select * from dbo.products
-- ----------------------------------------------------------------------------
select
ProductId,
productName,
Price,
Category,
case
when Price<50 then 'low'
when Price between 50 and 200 then 'medium'
else 'high'
end as PriceCategory

from dbo.products