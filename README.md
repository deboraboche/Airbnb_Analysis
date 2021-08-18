# Airbnb_Analysis
 My final project in the Master of Data Analytics Certificate was to generate insights for Boston investor based on the Airbnb dataset.

Questions:

- How many properties are listed in the Airbnb Boston by neighbourhood?
- What is the average night price per neighbourhood?
- Is there any relationship between price and demand?
- Are people giving high scores for expensive properties?
- The cleaning fee is related to the demand?
- Calculated KPI (ROI)

Qualitative Search:
- Suburb vibe by Airbnb description (https://tagcrowd.com/)

Dataset:
- listing (3.6K lines)
- calendar(1.3M lines)
- reviews(68K lines)

Dates:
Calendar – 06/09/2016 -  05/09/2017
Review – 21/03/2009 – 06/09/2016
Listing – 07/09/2016

# SQL
I used the data.world website to run the queries. 

The first query,  I aggrupated neighbourhood by listing.
- (https://github.com/deboraboche/Airbnb_Analysis/blob/main/Scripts/ListingByNeighbourhood.sql)

I exported from data.world -> listings_count.csv

I upload the listings_count.csv in Tableau and created the graph below. 
- (https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/Neighbourhood%20by%20Listing.png)

Tableau File: Neighbourhood_listing.twbx

The second query, I aggrupated neighbourhood by price.
- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Scripts/PricePerNeighbourhood.sql

I exported from data.world -> calendar_listing_price.csv

I upload the calendar_listing_price.csv in Tableau and created the graph below. 

Tableau File: Neighbourhood_pricing.twbx
- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/Average%20price%20per%20neighbourhood.png

# Excel

1)calendar_popular_month.xlsx : It is the listing.xlsx using the filtering Available = F.

1.1) At calendar_popular_month.xlsx(month_count_listings tab): I created the month column using TEXT. I add a Excel(XLSX) connection at Tableau and created a treemaps below using the month and count(listing).

Tableau File: popular_month.twbx
- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/Popular%20month.png

2)listings_sept_2016.xlsx : It is the listing.xlsx with the filters below:

        room_type = "Entire home/apt"
        property_type in ("Apartment","House","Townhouse","Condominium")

2.1) At listings_sept_2016.xlsx(Host_years_AVG_Review_Score tab): I created a column called host_years using DATEDIF and used a pivot table selecting host_years and AVG(review_scores_rating). 

- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/ReviewScore%20by%20HostYears.png

2.2) At listings_sept_2016.xlsx(Revenue by area_Occupancy rate tab) : I created a pivot table with AVG price and AVG of the availability(Sep/16 – Sep/17) per neighbourhood. I created the treemaps in Tableau below using the price per night(from data.world query) and neighbourhood.

Tableau File: Neighbourhood_revenue.twbx
 - https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/Revenue%20By%20neighbourhood.png

I created data bars below using neighbourgood and occupancy rates.

Occupancy Rate = $ \frac{(365 - AVG(availability365))}{365}$

- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/OccupancyRate%20by%20neighbourhood.png

2.3) At listings_sept_2016.xlsx(Demand_price_listing tab): I created a column called Demand and use IF to divide in Low, medium and high demand.

0 – 120 days – Low demand

121 - 240 days – Medium demand

241 - 360 days – High demand

I used the pivot table with demand, count(id), AVG(price) and neighbourhood.

- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/Demand_price.png

2.4) At listings_sept_2016.xlsx(cleanfee_demand tab): I created the pivot table with neighbourhood, AVG(clean_fee) and demand(Low and High).

- https://github.com/deboraboche/Airbnb_Analysis/blob/main/Tableau%20Graphs/CleanFee_Demand.png

