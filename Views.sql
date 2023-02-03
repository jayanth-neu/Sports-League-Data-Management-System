
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

--Creating Views
USE Team4;
GO

--Teams and their Wins at Home Venue
CREATE VIEW Report1 AS
SELECT D.TeamName, COUNT(*) AS HomeVenueWins
FROM Schedule A
INNER JOIN MatchResult B ON A.MatchID=B.MatchID
INNER JOIN Venue C ON A.VenueID=C.VenueID
INNER JOIN Team D ON B.Winner=D.TeamID
WHERE B.Winner = C.HomeTeamID AND B.Winner IS NOT NULL
GROUP BY D.TeamName;
GO

SELECT * FROM Report1;


--Captains and their Player of the Match Awards Count

CREATE VIEW Report2 AS
SELECT B.FirstName, B.LastName, COUNT(*) AS PlayerOfTheMatchAwards
FROM Team A
INNER JOIN Player B ON A.Captain = B.PlayerID
INNER JOIN MatchAwards C ON A.Captain = C.PlayerID
INNER JOIN Category D ON C.CategoryID = D.CategoryID
WHERE D.CategoryName = 'Player of the Match'
GROUP BY B.FirstName, B.LastName;
GO


SELECT * FROM Report2;

