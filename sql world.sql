use world;
-- Count Cities in USA: Scenario: 
-- You've been tasked with conducting a demographic analysis of cities in the United States. 
-- Your first step is to determine the total number of cities within the country to provide a baseline for further analysis.; 

SELECT co.Name,
       co.Population AS country_population,
       COUNT(ci.ID) AS total_cities
FROM Country co
JOIN City ci
    ON ci.CountryCode = co.Code
WHERE co.Code = 'USA'
GROUP BY co.Name, co.Population;

Select ci.name, co.lifeexpectancy  
From country co 
Join city ci 
On ci.countrycode = co.code 
Order by co.lifeexpectancy DESC;

 
SELECT ci.name, ci.population
FROM Country co
JOIN City ci
ON co.code= ci.countrycode 
Where ci.name like  "New%";

Select Ci.population, ci.name 
From City ci
Join country co
On ci.name= co.name
Limit 10; 

Select ci.population, ci.name 
From city ci 
Join country co 
On ci.name = co.name 
Where ci.population >2000000; 

Select distinct ci.name

From City ci

Join Country co

On ci.countrycode = co.code 

Where ci.name like "Be%";


Select ci.name, ci.population

From city ci

Join country co

On ci.countrycode= co.code

Where ci.population between 500000 and 1000000;


Select ci.name, ci.population 
From City ci 
Join Country co 
On ci.countrycode= co.code 
Order by ci.name ASC; 


Select ci.name, MAX(ci.population)
From city ci
Join country co
On co.code = ci.countrycode 
group by ci.name, ci.population
order by ci.population DESC;


Select distinct ci.name, ci.population

From city ci

Join country co

On co.code= ci.countrycode 

Group by ci.name, ci.population; 


Select ci.name, MIN(ci.population) 
From city ci
Join country co
On ci.countrycode= co.code 
Group by ci.population, ci.name
order by ci.population, ci.name ASC;


Select co.name, MAX(co.population) 
From country co 
Join city ci 
On ci.name=co.name
Group by co.name, co.population 
Order by co.population DESC; 


SELECT 
    co.name,
    co.capital,
    COUNT(ci.id) AS total_cities
FROM country co
JOIN city ci
    ON ci.countrycode = co.code
WHERE co.name = 'Spain'
GROUP BY co.name, co.capital;


Select ci.name, ci.population, count(ci.id) as total_cities 
From city ci
Join country co
On ci.countrycode= co.code 
Where co.continent= "europe" 
Group by co.name, ci.name, ci.population;

Select co.name, avg(co.population)

From country co 

Join city ci

On ci.countrycode=co.code 

group by co.population, co.name

order by co.population ASC;


SELECT
    co.name AS country,
    ci.name AS capital_city,
    ci.population AS capital_population
FROM country co
JOIN city ci
    ON ci.id = co.capital
ORDER BY ci.population DESC;


Select co.name as country, min(co.population) 

From Country co 

Join city ci 

On co.code= ci.countrycode 

Group by co.population, co.name 

Order by co.population, co.name DESC; 


 -- Display Columns with Limit (Rows 31-40): Scenario: 
 -- A market research firm requires detailed information on cities beyond the top rankings for a comprehensive analysis. 
-- You're tasked with providing data on cities ranked between 31st and 40th by population to ensure a thorough understanding of
-- urban demographics.
 
Select ci.population, ci.name, co.name as country
From city ci
join country co 
on co.code = ci.countrycode
limit 30,10;


select ci.name as city, ci.population
from city ci
join country co 
on co.code= ci.countrycode
limit 5,4





 
 
