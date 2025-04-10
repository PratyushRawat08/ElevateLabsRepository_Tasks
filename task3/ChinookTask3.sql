use  workpalce;
show tables;

Select * from persons;
use work;
show tables;
Select * from employee;

INSERT INTO employee (sno, id, name, age) VALUES
(1, 201, 'Charlie Brown', 25),
(2, 202, 'Lucy Van Pelt', 30),
(3, 203, 'Linus Van Pelt', 28),
(4, 204, 'Sally Brown', 22),
(5, 205, 'Schroeder', 35),
(6, 206, 'Peppermint Patty', 29),
(7, 207, 'Marcie', 27),
(8, 208, 'Franklin', 31),
(9, 209, 'Pig-Pen', 24),
(10, 210, 'Woodstock', 40);

use  workpalce;
show tables;
INSERT INTO persons (LastName, FirstName, PersonID, Address, City) VALUES
('Doe', 'John', 101, '123 Main St', 'Anytown'),
('Smith', 'Alice', 102, '456 Oak Ave', 'Springfield'),
('Brown', 'Bob', 103, '789 Pine Ln', 'Shelbyville'),
('Wilson', 'Eva', 104, '101 Elm Rd', 'Capital City'),
('Garcia', 'David', 105, '222 Maple Dr', 'Riverside'),
('Martinez', 'Sophia', 106, '333 Birch Ct', 'Oakville'),
('Lee', 'Michael', 107, '444 Willow Way', 'Greenwood'),
('Jones', 'Olivia', 108, '555 Cedar Blvd', 'Hilltop'),
('Williams', 'Ethan', 109, '666 Spruce Pl', 'Valleyview'),
('Davis', 'Ava', 110, '777 Walnut St', 'Lakewood');

use chinook;
show tables;

-- List all tracks with duration more than 5 minutes, ordered by duration
SELECT TrackId, Name, Milliseconds
FROM Track
WHERE Milliseconds > 300000
ORDER BY Milliseconds DESC;


-- Count number of albums by each artist
SELECT ArtistId, COUNT(*) AS AlbumCount
FROM Album
GROUP BY ArtistId;


-- INNER JOIN: Get track names along with album titles and artist names
SELECT t.Name AS TrackName, al.Title AS AlbumTitle, ar.Name AS ArtistName
FROM Track t
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar ON al.ArtistId = ar.ArtistId;




-- LEFT JOIN: List all albums and their artists (even if some albums have no artist)
SELECT al.Title AS AlbumTitle, ar.Name AS ArtistName
FROM Album al
LEFT JOIN Artist ar ON al.ArtistId = ar.ArtistId;



-- RIGHT JOIN: List all artists and their albums (even if an artist has no albums)
SELECT ar.Name AS ArtistName, al.Title AS AlbumTitle
FROM Album al
RIGHT JOIN Artist ar ON al.ArtistId = ar.ArtistId;



-- Find customers who have spent more than the average total invoice amount
SELECT CustomerId, FirstName, LastName
FROM Customer
WHERE CustomerId IN (
    SELECT CustomerId
    FROM Invoice
    GROUP BY CustomerId
    HAVING SUM(Total) > (SELECT AVG(Total) FROM Invoice)
);

-- Total sales per country
SELECT BillingCountry, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalSales DESC;


-- Average track length per genre
SELECT g.Name AS Genre, AVG(t.Milliseconds) AS AvgDuration
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.Name;


-- View to analyze customer sales
CREATE VIEW CustomerSales AS
SELECT c.CustomerId, c.FirstName, c.LastName, SUM(i.Total) AS TotalSpent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId;

SHOW CREATE VIEW CustomerSales;


-- View to show full track details
CREATE VIEW FullTrackDetails AS
SELECT t.TrackId, t.Name AS TrackName, al.Title AS Album, ar.Name AS Artist, g.Name AS Genre, mt.Name AS MediaType
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
JOIN Genre g ON t.GenreId = g.GenreId
JOIN MediaType mt ON t.MediaTypeId = mt.MediaTypeId;

SHOW CREATE VIEW FullTrackDetails;


-- Create index on Track.AlbumId to optimize join operations
CREATE INDEX idx_track_albumId ON Track(AlbumId);

SHOW INDEX FROM Track;


-- Create index on Invoice.CustomerId to speed up sales queries
CREATE INDEX idx_invoice_customerId ON Invoice(CustomerId);

SHOW INDEX FROM Invoice;

-- Create index on Track.GenreId to optimize genre-based filtering
CREATE INDEX idx_track_genreId ON Track(GenreId);
SHOW INDEX FROM Track;



