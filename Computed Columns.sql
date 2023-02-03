
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

--Computed Columns Using Functions
USE Team4;
GO
--VenueStatistics
--Get the Highest Team Score category value for a venue
--Get Least Team Score category value for a venue

CREATE FUNCTION CalcNumber(@VId INT, @CId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
	DECLARE @Team1Max DECIMAL(10,2)=0;
	DECLARE @Team2Max DECIMAL(10,2)=0;
	DECLARE @Team1Min DECIMAL(10,2)=0;
	DECLARE @Team2Min DECIMAL(10,2)=0;
	DECLARE @FinalValue DECIMAL(10,2)=0;

	SELECT @Team1Max =MAX(Team1Score),
			@Team2Max =MAX(Team2Score),
			@Team1Min =MIN(Team1Score),
			@Team2Min =MIN(Team2Score)
		FROM Schedule A
		INNER JOIN MatchResult B ON A.MatchID = B.MatchID
		WHERE VenueID = @VId;

	IF @CId = 1
		IF @Team1Max > @Team2Max
			SET @FinalValue = @Team1Max
		ELSE
			SET @FinalValue = @Team2Max
	ELSE
			IF @Team1Min < @Team2Min
			SET @FinalValue = @Team1Min
		ELSE
			SET @FinalValue = @Team2Min

	RETURN @FinalValue;
		
END
GO

ALTER TABLE VenueStatistics ADD [Number] AS (dbo.CalcNumber(VenueID, CategoryID));


--PointsTable
--Calculate NetRunRate by calculating the win percentage for each team

CREATE FUNCTION CalcNRR(@Edi INT, @TId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
	DECLARE @MatchesPlayed DECIMAL(10,2) = 0;
	DECLARE @MatchesWon DECIMAL(10,2) = 0;
	DECLARE @NRR DECIMAL(10,2) = 0;
	
	SELECT @MatchesPlayed = COUNT(*) 
	FROM Schedule
	WHERE Edition = @Edi AND (Team1 = @TId OR Team2 = @TId);
	
	SELECT @MatchesWon = COUNT(*) 
	FROM Schedule A
	INNER JOIN MatchResult B ON A.MatchID = B.MatchID
	WHERE A.Edition = @Edi AND (B.Winner = @TId);	
	
	IF @MatchesPlayed=0
		SET @NRR = 0
	ELSE
		SET @NRR = @MatchesWon/@MatchesPlayed;
	
	RETURN @NRR;
END
GO

ALTER TABLE PointsTable ADD [NetRunrate] AS (dbo.CalcNRR(Edition, TeamID));