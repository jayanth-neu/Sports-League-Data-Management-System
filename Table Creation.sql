
/* 
Project Team: 4
Topic: Cricket League Data Management System
Team members:
	Vamsi Krishna Poluru   – 002924538
	Kumbham naga priya     – 002921442 
	Sai Meghana Surapaneni - 002929424
	Jayanth Vakkalagadda   - 002950342	
	Roja Pinnamraju        - 002925814
*/

--Database and Tables Creation Script

CREATE DATABASE Team4;
GO

USE Team4;

--Category Table
CREATE TABLE [Category] (
  [CategoryID] INT NOT NULL PRIMARY KEY,
  [CategoryType] VARCHAR(30) NOT NULL,
  [CategoryName] VARCHAR(30) NOT NULL
);

--Subcategory Table
CREATE TABLE [Subcategory] (
  [SubcategoryID] INT NOT NULL PRIMARY KEY,
  [SubcategoryName] VARCHAR(30) NOT NULL
);

--Player Table
CREATE TABLE [Player] (
  [PlayerID] INT NOT NULL PRIMARY KEY,
  [FirstName] VARCHAR(30) NOT NULL,
  [LastName] VARCHAR(30),
  [JerseyNumber] INT,
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [SubcategoryID] INT NOT NULL FOREIGN KEY REFERENCES Subcategory(SubcategoryID),
  [TeamID] INT,
  [DateOfBirth] DATE NOT NULL,
  [Country] VARCHAR(30) NOT NULL,
  [PlayerWorth] MONEY
);

--Team Table
CREATE TABLE [Team] (
  [TeamID] INT NOT NULL PRIMARY KEY,
  [TeamName] VARCHAR(30) NOT NULL,
  [OwnerFirstName] VARCHAR(30) NOT NULL,
  [OwnerLastName] VARCHAR(30),
  [PrimarySponsor] VARCHAR(30),
  [TeamWorth] MONEY,
  [DebutEdition] INT NOT NULL,
  [Captain] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [ViceCaptain] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID)
);

--Add Foreign Key Constraint to Player Table
ALTER TABLE [Player]
ADD FOREIGN KEY (TeamID) REFERENCES Team(TeamID);

--Batter Table
CREATE TABLE [Batter] (
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [Matches] INT,
  [Innings] INT,
  [Runs] INT,
  [Balls] INT,
  [HighestScore] INT,
  [AverageScore] AS [Runs]/NULLIF([Innings],0),
  [Strikerate] AS 100*[Runs]/NULLIF([Balls],0),
  [NotOuts] INT,
  [Fours] INT,
  [Sixes] INT,
  [Centuries] INT,
  [HalfCenturies] INT,
  [DuckOuts] INT,
  CONSTRAINT PKBatter PRIMARY KEY (PlayerID) 
);

--Bowler Table
CREATE TABLE [Bowler] (
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [Matches] INT,
  [Innings] INT,
  [Balls] INT,
  [Runs] INT,
  [Maidens] INT,
  [Wickets] INT,
  [Average] DECIMAL(10,2),
  [Economy] DECIMAL(10,2),
  [Strikerate] DECIMAL(10,2),
  [FiveWicketHauls] INT,
  CONSTRAINT PKBowler PRIMARY KEY (PlayerID)
);

--WicketKeeper Table
CREATE TABLE [WicketKeeper] (
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [Matches] INT,
  [Innings] INT,
  [Balls] INT,
  [Catches] INT,
  [Stumpings] INT,
  CONSTRAINT PKWicketKeeper PRIMARY KEY (PlayerID)
);

--Venue Table
CREATE TABLE [Venue] (
  [VenueID] INT NOT NULL PRIMARY KEY,
  [VenueName] VARCHAR(30) NOT NULL,
  [City] VARCHAR(30) NOT NULL,
  [Country] VARCHAR(30) NOT NULL,
  [Capacity] INT,
  [HomeTeamID] INT FOREIGN KEY REFERENCES Team(TeamID)
);

--Schedule Table
CREATE TABLE [Schedule] (
  [MatchID] INT NOT NULL PRIMARY KEY,
  [MatchNumber] INT NOT NULL,
  [Edition] INT NOT NULL,
  [MatchDate] DATE NOT NULL,
  [MatchStartTime] DATETIME,
  [MatchEndTime] DATETIME,
  [Team1] INT NOT NULL FOREIGN KEY REFERENCES Team(TeamID),
  [Team2] INT NOT NULL FOREIGN KEY REFERENCES Team(TeamID),
  [VenueID] INT NOT NULL FOREIGN KEY REFERENCES Venue(VenueID)
);

--RunType Table
CREATE TABLE [RunType] (
  [RunTypeID] INT NOT NULL PRIMARY KEY,
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [Runs] INT NOT NULL
);

--Delivery Table
CREATE TABLE [Delivery] (
  [DeliveryID] INT NOT NULL PRIMARY KEY,
  [MatchID] INT NOT NULL FOREIGN KEY REFERENCES Schedule(MatchID),
  [OverNumber] INT NOT NULL,
  [BallNumber] INT NOT NULL,
  [PowerplayType] VARCHAR(30),
  [Bowler] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [Batter] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  [OtherPlayer] INT FOREIGN KEY REFERENCES Player(PlayerID),
  [BowlingSpeed] DECIMAL(10,2),
  [RunTypeID] INT NOT NULL FOREIGN KEY REFERENCES RunType(RunTypeID)
);

--PlayerLeaderboard Table
CREATE TABLE [PlayerLeaderboard] (
  [Edition] INT NOT NULL,
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [Number] DECIMAL(10,2) NOT NULL,
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  CONSTRAINT PKPlayerLeaderboard PRIMARY KEY (Edition, CategoryID)
);

--TournamentAwards Table
CREATE TABLE [TournamentAwards] (
  [Edition] INT NOT NULL,
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  CONSTRAINT PKTournamentAwards PRIMARY KEY (Edition, CategoryID)
);

--MatchResult Table
CREATE TABLE [MatchResult] (
  [MatchID] INT NOT NULL FOREIGN KEY REFERENCES Schedule(MatchID),
  [Winner] INT FOREIGN KEY REFERENCES Team(TeamID),
  [ResultType] VARCHAR(30),
  [Team1Score] INT,
  [Team2Score] INT,
  [Team1Wickets] INT,
  [Team2Wickets] INT,
  [TossWinner] INT FOREIGN KEY REFERENCES Team(TeamID),
  CONSTRAINT PKMatchResult PRIMARY KEY (MatchID)
);

--MatchAwards Table
CREATE TABLE [MatchAwards] (
  [MatchID] INT NOT NULL FOREIGN KEY REFERENCES MatchResult(MatchID),
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [PlayerID] INT NOT NULL FOREIGN KEY REFERENCES Player(PlayerID),
  CONSTRAINT PKMatchAwards PRIMARY KEY (MatchID, CategoryID)
);

--PointsTable Table
CREATE TABLE [PointsTable] (
  [Edition] INT NOT NULL,
  [Rank] INT NOT NULL,
  [TeamID] INT NOT NULL FOREIGN KEY REFERENCES Team(TeamID),
  [Points] INT NOT NULL,
  CONSTRAINT PKPointsTable PRIMARY KEY (Edition, Rank)
);

--Staff Table
CREATE TABLE [Staff] (
  [StaffID] INT NOT NULL PRIMARY KEY,
  [FirstName] VARCHAR(30) NOT NULL,
  [LastName] VARCHAR(30),
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  [DateOfBirth] DATE NOT NULL,
  [DebutDate] DATE NOT NULL,
  [Country] VARCHAR(30) NOT NULL,
  [TeamID] INT FOREIGN KEY REFERENCES Team(TeamID)
);

--VenueStatistics Table
CREATE TABLE [VenueStatistics] (
  [VenueID] INT NOT NULL FOREIGN KEY REFERENCES Venue(VenueID),
  [CategoryID] INT NOT NULL FOREIGN KEY REFERENCES Category(CategoryID),
  --[Number] DECIMAL(10,2) NOT NULL,
  CONSTRAINT PKVenueStatistics PRIMARY KEY (VenueID, CategoryID)
);















