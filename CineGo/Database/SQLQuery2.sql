
CREATE TABLE Movies (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    Duration INT,  -- In minutes
    ReleaseDate DATE,
    PosterURL NVARCHAR(MAX),
);
Select * from Movies

CREATE TABLE InterstellarSeats (
    SeatID INT PRIMARY KEY, 
    MovieName VARCHAR(100) DEFAULT 'Interstellar', 
    SeatNumber INT UNIQUE NOT NULL, 
    Status VARCHAR(10) CHECK (Status IN ('Available', 'Booked')) DEFAULT 'Available', 
    UserID INT NULL -- Stores the user who booked the seat
);
INSERT INTO InterstellarSeats (SeatID, SeatNumber, Status, UserID)
VALUES 
(1, 1, 'Available', NULL),
(2, 2, 'Available', NULL),
(3, 3, 'Available', NULL),
(4, 4, 'Available', NULL),
(5, 5, 'Available', NULL),
(6, 6, 'Available', NULL),
(7, 7, 'Available', NULL),
(8, 8, 'Available', NULL),
(9, 9, 'Available', NULL),
(10, 10, 'Available', NULL),
(11, 11, 'Available', NULL),
(12, 12, 'Available', NULL),
(13, 13, 'Available', NULL),
(14, 14, 'Available', NULL),
(15, 15, 'Available', NULL),
(16, 16, 'Available', NULL),
(17, 17, 'Available', NULL),
(18, 18, 'Available', NULL),
(19, 19, 'Available', NULL),
(20, 20, 'Available', NULL);

Select * from InterstellarSeats;

SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'InterstellarSeats';
USE Cinego; -- Replace with your actual database name
SELECT * FROM InterstellarSeats;
Show Tables;