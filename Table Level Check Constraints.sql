
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

--Table Level Constraints Using Functions
USE Team4;

--PointsTable
--Allow Teams in Points Table from their debut edition

CREATE FUNCTION CheckEdition(@TId INT, @Edition INT)
RETURNS INT
AS
BEGIN
	DECLARE @DebutFlag int=0;
		SELECT @DebutFlag = @Edition-DebutEdition
		FROM Team
		WHERE TeamID = @TId;
	RETURN @DebutFlag;
END;

ALTER TABLE PointsTable ADD CONSTRAINT RejectWrongEdition CHECK (dbo.CheckEdition(TeamID, Edition)>=0); 


--Bowler
--Allow Players who are not WicketKeepers

CREATE FUNCTION CheckWicketKeeper(@PId INT)
RETURNS INT
AS
BEGIN
	DECLARE @WicketKeeperFlag int=0;
		SELECT @WicketKeeperFlag = COUNT(*)
		FROM Wicketkeeper
		WHERE PlayerID = @PId;
	RETURN @WicketKeeperFlag;
END;

ALTER TABLE Bowler ADD CONSTRAINT RejectWicketKeeper CHECK (dbo.CheckWicketKeeper(PlayerID)=0); 


--Wicketkeeper
--Allow Players who are not Bowlers

CREATE FUNCTION CheckBowler(@PId INT)
RETURNS INT
AS
BEGIN
	DECLARE @BowlerFlag int=0;
		SELECT @BowlerFlag = COUNT(*)
		FROM Bowler
		WHERE PlayerID = @PId;
	RETURN @BowlerFlag;
END;

ALTER TABLE WicketKeeper ADD CONSTRAINT RejectBowler CHECK (dbo.CheckBowler(PlayerID)=0);


--TournamentAwards
--Allow 'Purple Cap' Award for only Bowlers, Allow 'Orange Cap' for only Batters

CREATE FUNCTION CheckPlayerTypeAwards(@PId INT, @AwardCategory INT)
RETURNS INT
AS
BEGIN
	DECLARE @AwardFlag int=0;
	
	IF @AwardCategory = 10
		BEGIN
		SELECT @AwardFlag = COUNT(*)  
			FROM TournamentAwards A
			INNER JOIN Player B ON A.PlayerID=B.PlayerID
			INNER JOIN Category C ON B.CategoryID=C.CategoryID
			WHERE C.CategoryName = 'Batter' AND A.PlayerID=@PId;
		END
		
	ELSE
		BEGIN
		IF @AwardCategory = 11
			BEGIN
			SELECT @AwardFlag = COUNT(*)  
				FROM TournamentAwards A
				INNER JOIN Player B ON A.PlayerID=B.PlayerID
				INNER JOIN Category C ON B.CategoryID=C.CategoryID
				WHERE C.CategoryName = 'Bowler' AND A.PlayerID=@PId;
			END
			
		ELSE	
			SET @AwardFlag = 1
		END
	
	RETURN @AwardFlag;		
END;

ALTER TABLE TournamentAwards ADD CONSTRAINT RejectPlayerAward CHECK (dbo.CheckPlayerTypeAwards(PlayerID, CategoryID)>0);