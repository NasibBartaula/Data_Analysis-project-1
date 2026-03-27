select * from dbo.customer_reviews
select
ReviewId,
CustomerId,
ProductId,
Rating,
format(convert(date,ReviewDate),'dd.mm.yyyy'),
replace(ReviewText,'  ',' ')as reviewText
from
dbo.customer_reviews