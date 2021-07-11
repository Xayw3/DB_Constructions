SELECT * FROM genres WHERE GenreId IN (4, 6, 10);

SELECT * FROM albums WHERE AlbumId BETWEEN 2 and 10;

SELECT * FROM media_types WHERE MediaTypeId NOT BETWEEN 2 and 4;

SELECT * FROM media_types WHERE Name LIKE '%ed%';

SELECT * FROM employees WHERE EmployeeId > 1 AND City = 'Lethbridge';

SELECT * FROM employees WHERE City = 'Edmonton' OR City = 'Lethbridge';

SELECT * FROM employees WHERE (EmployeeId < 3 OR EmployeeId > 5)  AND City = 'Calgary';

SELECT * FROM employees ORDER BY BirthDate;

SELECT * FROM employees ORDER BY BirthDate DESC;

SELECT * FROM artists ORDER BY ArtistId LIMIT 7;

SELECT * FROM artists ORDER BY ArtistId LIMIT 7 OFFSET 10;

SELECT MONTH(BirthDate) as Birthday_Month FROM employees;

SELECT Name FROM artists UNION SELECT Name FROM tracks;

SELECT * FROM albums JOIN artists;

SELECT * FROM albums JOIN artists ON albums.AlbumId = artists.ArtistId;

SELECT * FROM genres RIGHT JOIN media_types ON genres.GenreId = media_types.MediaTypeId;

SELECT * FROM genres LEFT JOIN media_types ON genres.GenreId = media_types.MediaTypeId;

SELECT FirstName, LastName, Country, 
CASE 
WHEN Country = 'Germany' THEN 'He from Germany'
WHEN Country = 'Canada' THEN 'He from Canada'
ELSE 'Other country'
END AS Place
FROM customers;