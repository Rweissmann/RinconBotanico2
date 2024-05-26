USE world;
SELECT c.Name AS PAIS, c.Code, cl.Language FROM country c INNER JOIN countrylanguage cl On c.code=cl.countrycode WHERE c.code = "ARG" AND cl.IsOfficial= "T";
Select city.id, city.name, country.name as Pais from city, country Where city.countrycode=country.code ORDER BY Country.name;
Select city.id, city.name, country.name as Pais from city right join country ON city.countrycode=country.code ORDER BY Country.name;
Select ct.id, ct.name, c.name as Pais from city ct right join country c join countrylangauje cl ON ct.countrycode=c.code ORDER BY c.name WHERE c.code = "ARG" AND cl.IsOfficial= "T";