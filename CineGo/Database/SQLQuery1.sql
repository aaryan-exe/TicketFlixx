
CREATE TABLE Movies (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title NVARCHAR(255) NOT NULL,
    Duration INT,  -- In minutes
    ReleaseDate DATE,
    PosterURL NVARCHAR(MAX),
);
Select * from Movies