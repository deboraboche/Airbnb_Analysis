select l.neighbourhood_cleansed,min(c.price), max(c.price),avg(c.price) as future_price, avg(l.price) as last_year_price
from calendar c
join listings l
on c.listing_id = l.id
where c.price and l.price is not NULL
AND
room_type = "Entire home/apt"
and
property_type in ("Apartment","House","Townhouse","Condominium")
group by l.neighbourhood_cleansed
