CREATE TABLE Tickets (
    TicketID INT IDENTITY(1,1) PRIMARY KEY,
    UserID NVARCHAR(50) NOT NULL,
    MovieName NVARCHAR(255) NOT NULL,
    TheaterName NVARCHAR(255) NOT NULL,
    ShowDate NVARCHAR(20) NOT NULL,  -- Stores the date as text (e.g., "2025-02-27")
    ShowTime NVARCHAR(20) NOT NULL,  -- Stores time as text (e.g., "9:00 AM")
    Price INT NOT NULL
);
