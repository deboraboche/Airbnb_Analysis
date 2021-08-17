select neighbourhood_cleansed, count(*) as listing
from listings
where price is not NULL 
AND
room_type = "Entire home/apt"
and
property_type in ("Apartment","House","Townhouse","Condominium")
group by neighbourhood_cleansed
order by listing desc
