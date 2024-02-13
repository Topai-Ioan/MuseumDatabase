-- Drop foreign keys in EventTickets Table
ALTER TABLE
    EventTickets DROP CONSTRAINT FK_EventTickets_Visitors;

ALTER TABLE
    EventTickets DROP CONSTRAINT FK_EventTickets_Events;

ALTER TABLE
    EventTickets DROP CONSTRAINT FK_EventTickets_PriceCategories;

-- Drop foreign keys in Exhibits Table
ALTER TABLE
    Exhibits DROP CONSTRAINT FK_Exhibits_Curators;

-- Drop foreign keys in Events Table
ALTER TABLE
    Events DROP CONSTRAINT FK_Events_Curators;

-- Drop foreign keys in Artworks Table
ALTER TABLE
    Artworks DROP CONSTRAINT FK_Artworks_Artists;

ALTER TABLE
    Artworks DROP CONSTRAINT FK_Artworks_Exhibits;

ALTER TABLE
    Artworks DROP CONSTRAINT FK_Artworks_Genres;

-- Drop foreign keys in ExhibitTickets Table
ALTER TABLE
    ExhibitTickets DROP CONSTRAINT FK_ExhibitTickets_Visitors;

ALTER TABLE
    ExhibitTickets DROP CONSTRAINT FK_ExhibitTickets_Exhibits;

ALTER TABLE
    ExhibitTickets DROP CONSTRAINT FK_ExhibitTickets_PriceCategories;

-- Drop ArtworkGenres Table
DROP TABLE IF EXISTS ArtworkGenres;

-- Drop Tickets Table
DROP TABLE IF EXISTS ExhibitTickets;

-- Drop Tickets Table
DROP TABLE IF EXISTS EventTickets;

-- Drop Artworks Table
DROP TABLE IF EXISTS Artworks;

-- Drop Artists Table
DROP TABLE IF EXISTS Artists;

-- Drop Exhibits Table
DROP TABLE IF EXISTS Exhibits;

-- Drop Events Table
DROP TABLE IF EXISTS Events;

-- Drop Visitors Table
DROP TABLE IF EXISTS Visitors;

-- Drop the Curators Table
DROP TABLE IF EXISTS Curators;

-- Drop Genres Table
DROP TABLE IF EXISTS Genres;

-- Drop the PriceCategories Table 
DROP TABLE IF EXISTS PriceCategories;

-- Genres Table
CREATE TABLE Genres (
    GenreID INT PRIMARY KEY,
    GenreName VARCHAR(100) NOT NULL
);

-- Tabelul Curators
CREATE TABLE Curators (
    CuratorID INT PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(255)
);

-- Exhibits Table
CREATE TABLE Exhibits (
    ExhibitID INT PRIMARY KEY,
    ExhibitName VARCHAR(255) NOT NULL,
    Description TEXT,
    StartDate DATE,
    EndDate DATE,
    CuratorID INT NOT NULL,
    CONSTRAINT FK_Exhibits_Curators FOREIGN KEY (CuratorID) REFERENCES Curators(CuratorID)
);

-- Artists Table
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    ArtistName VARCHAR(255) NOT NULL,
    BirthDate DATE,
    DeathDate DATE,
    Nationality VARCHAR(100),
    Biography VARCHAR(MAX)
);

-- Artworks Table
CREATE TABLE Artworks (
    ArtworkID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Description TEXT,
    CreationYear INT,
    ArtistID INT NOT NULL,
    ExhibitID INT NOT NULL,
    GenreID INT NOT NULL,
    CONSTRAINT FK_Artworks_Artists FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    CONSTRAINT FK_Artworks_Exhibits FOREIGN KEY (ExhibitID) REFERENCES Exhibits(ExhibitID),
    CONSTRAINT FK_Artworks_Genres FOREIGN KEY (GenreID) REFERENCES Genres(GenreID)
);

-- Visitors Table
CREATE TABLE Visitors (
    VisitorID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255),
    Phone VARCHAR(20)
);

-- Create the PriceCategories Table
CREATE TABLE PriceCategories (
    PriceID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL,
    TicketPrice DECIMAL(10, 2) NOT NULL
);

-- Events Table
CREATE TABLE Events (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255) NOT NULL,
    Description TEXT,
    StartDate DATETIME,
    EndDate DATETIME,
    CuratorID INT NOT NULL,
    CONSTRAINT FK_Events_Curators FOREIGN KEY (CuratorID) REFERENCES Curators(CuratorID)
);

-- Tickets Table
CREATE TABLE EventTickets (
    TicketID INT PRIMARY KEY,
    VisitorID INT,
    EventId INT NOT NULL,
    PriceID INT NOT NULL,
    PurchaseDate DATETIME NOT NULL,
    CONSTRAINT FK_EventTickets_Visitors FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID),
    CONSTRAINT FK_EventTickets_Events FOREIGN KEY (EventID) REFERENCES Events(EventID),
    CONSTRAINT FK_EventTickets_PriceCategories FOREIGN KEY (PriceID) REFERENCES PriceCategories(PriceID)
);

-- Tickets Table
CREATE TABLE ExhibitTickets (
    TicketID INT PRIMARY KEY,
    VisitorID INT,
    ExhibitID INT NOT NULL,
    PriceID INT NOT NULL,
    PurchaseDate DATETIME NOT NULL,
    CONSTRAINT FK_ExhibitTickets_Visitors FOREIGN KEY (VisitorID) REFERENCES Visitors(VisitorID),
    CONSTRAINT FK_ExhibitTickets_Exhibits FOREIGN KEY (ExhibitID) REFERENCES Exhibits(ExhibitID),
    CONSTRAINT FK_ExhibitTickets_PriceCategories FOREIGN KEY (PriceID) REFERENCES PriceCategories(PriceID)
);