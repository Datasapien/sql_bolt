-- https://sqlbolt.com/lesson/select_queries_review

-- North_american_cities
city,country,population,latitude,longitude
Guadalajara,Mexico,1500800,20.659699,-103.349609
Toronto,Canada,2795060,43.653226,-79.383184
Houston,United States,2195914,29.760427,-95.369803
New York,United States,8405837,40.712784,-74.005941
Philadelphia,United States,1553165,39.952584,-75.165222
Havana,Cuba,2106146,23.05407,-82.345189
Mexico City,Mexico,8555500,19.432608,-99.133208
Phoenix,United States,1513367,33.448377,-112.074037
Los Angeles,United States,3884307,34.052234,-118.243685
Ecatepec de Morelos,Mexico,1742000,19.601841,-99.050674
Montreal,Canada,1717767,45.501689,-73.567256
Chicago,United States,2718782,41.878114,-87.629798

-- List all the Canadian cities and their populations
SELECT *
FROM north_american_cities 
WHERE Country = "Canada";

-- Order all the cities in the United States by their latitude from north to south
SELECT * 
FROM north_american_cities 
WHERE Country = "United States"
ORDER BY Latitude DESC;

-- List all the cities west of Chicago (Longitude -87.629798) ordered from west to east
SELECT * 
FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude ASC;

-- List the two largest cities in Mexico (by population)
SELECT * 
FROM north_american_cities
WHERE Country = "Mexico"
ORDER BY Population DESC
LIMIT 2;

-- List the third and fourth largest cities (by population) in the United States and their population
SELECT City, Population
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
LIMIT 2
OFFSET 2;