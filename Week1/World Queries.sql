1. SELECT name
 FROM city
WHERE CountryCode='NLD';
2. SELECT Name, Population
 FROM city
 WHERE Name = "Rotterdam "
3. SELECT Name 
FROM country
WHERE Continent = "North America"
4. SELECT Name, Continent, SurfaceArea   
FROM Country
ORDER BY SurfaceArea DESC LIMIT 10;
5. SELECT Name, CountryCode, Population FROM city
ORDER BY Population DESC LIMIT 10;
6. SELECT Name, continent, Population FROM country
WHERE Name LIKE 'a%'
ORDER BY Population DESC LIMIT 3 ;
7. SELECT
SUM(Population) AS TotalPopulation
FROM Country
WHERE Continent = "Asia";
8. SELECT country.Region, countryLanguage.Language
FROM Country
INNER JOIN CountryLanguage ON Country.Code = CountryLanguage.CountryCode
WHERE Region = "South America";
9. SELECT City.Name, Country.Name, CountryLanguage.Language, City.CountryCode 
  FROM City
  JOIN Country ON City.CountryCode = Country.code 
  JOIN CountryLanguage ON Country.Code = Country.CountryCode
Where city = "Barcelona"