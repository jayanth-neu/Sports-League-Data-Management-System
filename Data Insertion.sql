
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

--Inserting Sample Data Script

USE Team4;

--Category Table
INSERT INTO Category VALUES (1, 'VenueStatistics', 'Highest Team Score');
INSERT INTO Category VALUES (2, 'VenueStatistics', 'Lowest Team Score');
INSERT INTO Category VALUES (3, 'Player', 'Batter');
INSERT INTO Category VALUES (4, 'Player', 'Bowler');
INSERT INTO Category VALUES (5, 'Player', 'WicketKeeper');
INSERT INTO Category VALUES (6, 'Player', 'Allrounder');
INSERT INTO Category VALUES (7, 'Staff', 'Batting Coach');
INSERT INTO Category VALUES (8, 'Staff', 'Fielding Coach');
INSERT INTO Category VALUES (9, 'Staff', 'Physiotherapist');
INSERT INTO Category VALUES (10,'TournamentAwards', 'Orange Cap');
INSERT INTO Category VALUES (11,'TournamentAwards', 'Purple Cap');
INSERT INTO Category VALUES (12,'RunType', 'Boundary');
INSERT INTO Category VALUES (13,'RunType', 'Six');
INSERT INTO Category VALUES (14,'RunType', 'One Run');
INSERT INTO Category VALUES (15,'RunType', 'Two Runs');
INSERT INTO Category VALUES (16,'RunType', 'Three Runs');
INSERT INTO Category VALUES (17,'RunType', 'Stump Out');
INSERT INTO Category VALUES (18,'RunType', 'Clean Bowled');
INSERT INTO Category VALUES (19,'RunType', 'Run Out');
INSERT INTO Category VALUES (20,'PlayerLeaderBoard', 'Most Runs');
INSERT INTO Category VALUES (21,'PlayerLeaderBoard', 'Most Fours');
INSERT INTO Category VALUES (22,'PlayerLeaderBoard', 'Most Sixes');
INSERT INTO Category VALUES (23,'MatchAwards', 'Player of the Match');
INSERT INTO Category VALUES (24,'MatchAwards', 'Super Striker of the Match');
INSERT INTO Category VALUES (25,'RunType', 'Caught');
INSERT INTO Category VALUES (26,'RunType', 'Caught and Bowled');


--Subcategory Table
INSERT INTO Subcategory VALUES (1, 'Right Hand Batter');
INSERT INTO Subcategory VALUES (2, 'Left Hand Batter');
INSERT INTO Subcategory VALUES (3, 'Right Hand WicketKeeper Batter');
INSERT INTO Subcategory VALUES (4, 'Left Hand WicketKeeper Batter');
INSERT INTO Subcategory VALUES (5, 'Right Hand Fast Bowler');
INSERT INTO Subcategory VALUES (6, 'Left Hand Fast Bowler');
INSERT INTO Subcategory VALUES (7, 'Right Hand Medium Bowler');
INSERT INTO Subcategory VALUES (8, 'Left Hand Medium Bowler');
INSERT INTO Subcategory VALUES (9, 'Right Hand Leg Spin Bowler');
INSERT INTO Subcategory VALUES (10, 'Left Hand Leg Spin Bowler');


--Player Table
INSERT INTO dbo.Player
VALUES (1,'Rohit','Sharma',45,3,1,null,'04/30/1987','India',8.5)

INSERT INTO dbo.Player
VALUES (2,'Virat','Kohli',18,3,1,null,'11/5/1988','India',12.5)

INSERT INTO dbo.Player
VALUES (3,'David','Warner',31,3,1,null,'10/27/1986','Australia',10.5)

INSERT INTO dbo.Player
VALUES (4,'Shikar','Dhawan',42,3,2,null,'12/5/1985','India',9)

INSERT INTO dbo.Player
VALUES (5,'Yuvraj','Singh',12,6,2,null,'12/12/1981','India',12)

INSERT INTO dbo.Player
VALUES (6,'Shane','Watson',33,6,1,null,'6/17/81','Australia',10)

INSERT INTO dbo.Player
VALUES (7,'Babar','Azam',56,3,1,null,'10/15/94','Pakistan',8)

INSERT INTO dbo.Player
VALUES (8,'Steve','Smith',49,3,1,null,'6/2/1989','Australia',6.5)

INSERT INTO dbo.Player
VALUES (9,'Jason','Roy',20,3,1,null,'7/21/90','England',4.5)

INSERT INTO dbo.Player
VALUES (10,'Evin','Lewis',17,3,2,null,'12/20/1991','West Indies',7.5)

INSERT INTO dbo.Player
VALUES (11,'Chris','Gayle',333,3,2,null,'9/21/1979','West Indies',9.5)

INSERT INTO dbo.Player
VALUES (12,'Suresh','Raina',3,6,1,null,'11/27/1986','India',10.5)

INSERT INTO dbo.Player
VALUES (13,'Kane','Williamson',22,3,1,null,'8/8/1990','New zealand',10.5)

INSERT INTO dbo.Player
VALUES (14,'Surya Kumar','Yadav',63,3,1,null,'9/14/1990','India',12)

INSERT INTO dbo.Player
VALUES (15,'David','Miller',99,1,2,null,'6/10/1989','South Africa',8)

INSERT INTO dbo.Player
VALUES (16,'Jaspreet','Bumrah',93,4,5,null,'12/6/1993','India',12.5)

INSERT INTO dbo.Player
VALUES (17,'Mitchell','Starc',56,4,6,null,'1/30/1989','Australia',11.5)

INSERT INTO dbo.Player
VALUES (18,'Trent','Boult',18,4,6,null,'7/22/1989','New zealand',11)

INSERT INTO dbo.Player
VALUES (19,'Harris','Rauf',97,4,6,null,'11/7/1993','Pakistan',6.5)

INSERT INTO dbo.Player
VALUES (20,'Pat','Cummins',30,6,5,null,'5/8/1993','Australia',9.5)

INSERT INTO dbo.Player
VALUES (21,'Bhuvaneswar','Kumar',15,4,5,null,'2/5/1990','India',10.5)

INSERT INTO dbo.Player
VALUES (22,'Tymal','Mills',72,4,6,null,'8/12/1992','England',9)

INSERT INTO dbo.Player
VALUES (23,'Mark','Wood',33,6,5,null,'1/11/1990','England',8)

INSERT INTO dbo.Player
VALUES (24,'Jofra','Archer',22,6,8,null,'6/15/1987','England',11)

INSERT INTO dbo.Player
VALUES (25,'Shardul','Thakur',54,6,7,null,'8/21/1990','India',8.5)

INSERT INTO dbo.Player
VALUES (26,'Yuzi','Chahal',3,4,9,null,'8/21/1994','India',9)

INSERT INTO dbo.Player
VALUES (27,'Adam','Zampa',88,4,10,null,'7/24/1992','Australia',8)

INSERT INTO dbo.Player
VALUES (28,'Imad','Wasim',9,4,10,null,'4/19/1991','Pakistan',6.5)

INSERT INTO dbo.Player
VALUES (29,'Aston','Agar',46,6,9,null,'2/18/1983','Australia',6)

INSERT INTO dbo.Player
VALUES (30,'Tabriaz','Shamsi',26,4,2,null,'6/16/1989','South Africa',5.5)

INSERT INTO dbo.Player
VALUES (31,'MS','Dhoni',7,5,3,null,'7/7/1981','India',11.5)

INSERT INTO dbo.Player
VALUES (32,'Nicholas','Pooran',29,5,4,null,'10/2/1995','West Indies',8)

INSERT INTO dbo.Player
VALUES (33,'Mathew','Wade',13,5,4,null,'12/26/1987','Australia',8.5)

INSERT INTO dbo.Player
VALUES (34,'KL','Rahul',1,5,3,null,'4/18/1992','India',11)

INSERT INTO dbo.Player
VALUES (35,'Rishabh','Pant',17,15,4,null,'10/4/1997','India',9.5)

INSERT INTO dbo.Player
VALUES (36,'Mohammad','Rizwan',16,5,3,null,'6/1/1992','Pakistan',8.5)

INSERT INTO dbo.Player
VALUES (37,'Jonny','Bairstow',51,5,3,7,'9/26/1989','England',9.5)

INSERT INTO dbo.Player
VALUES (38,'Quinton','De kock',12,5,4,8,'12/17/1992','South Africa',10)

INSERT INTO dbo.Player
VALUES (39,'Tom','Blundell',6,5,4,9,'9/1/1990','New Zealand',8.5)

INSERT INTO dbo.Player
VALUES (40,'Jos','Buttler',63,5,3,10,'9/8/1990','England',12.5)

--used this script for all players by updating the numbers
Update dbo.Player SET TeamID =6
WHERE PlayerID =36


--Team Table
INSERT INTO Team VALUES (1, 'Mumbai Indians', 'Adam', 'Hill', 'Idea', 6400000000, 2010, 1, 11);
INSERT INTO Team VALUES (2, 'Royal Challengers Bangalore', 'Dennis', 'Rao', 'Vodafone', 9400000000, 2011, 2, 12);
INSERT INTO Team VALUES (3, 'Sunrisers Hyderabad', 'Richard', 'Feyman', 'Airtel', 6700000000, 2011, 3, 13);
INSERT INTO Team VALUES (4, 'Kolkata KnightRiders', 'Dan', 'Brown', 'Jio', 4400000000, 2010, 4, 14);
INSERT INTO Team VALUES (5, 'Rajastan Royals', 'Pushpa', 'Singh', 'Ferrari', 8400000000, 2012, 5, 15);
INSERT INTO Team VALUES (6, 'Delhi Capitals', 'Joe', 'Kimmy', 'Volkswagen', 7400000000, 2013, 6, 16);
INSERT INTO Team VALUES (7, 'Kings XI Punjab', 'Gaw', 'Ji', 'Mahindra', 6500000000, 2010, 7, 17);
INSERT INTO Team VALUES (8, 'Chennai Super Kings', 'Fred', 'Cooper', 'Tata', 5400000000, 2012, 8, 18);
INSERT INTO Team VALUES (9, 'Rising Pune Supergiants', 'Leyman', 'Dawn', 'Nestle', 8100000000, 2010, 9, 19);
INSERT INTO Team VALUES (10, 'Gujarat Lions', 'Nich', 'Cooper', 'Haldirams', 7200000000, 2012, 10, 20);


--Batter Table
INSERT INTO dbo.Batter 
VALUES (1,12,10,420,302,102,10,20,11,1,2,1)

INSERT INTO dbo.Batter 
VALUES (2,13,13,631,420,133,12,33,17,2,5,0)

INSERT INTO dbo.Batter 
VALUES (3,14,9,331,292,56,4,21,7,0,2,2)

INSERT INTO dbo.Batter 
VALUES (4,13,11,228,210,47,3,26,4,0,0,1)

INSERT INTO dbo.Batter 
VALUES (5,11,7,194,147,61,3,19,8,0,1,0)

INSERT INTO dbo.Batter 
VALUES (6,15,13,368,322,74,5,34,12,0,2,3)

INSERT INTO dbo.Batter 
VALUES (7,12,10,424,332,92,0,32,3,0,4,4)

INSERT INTO dbo.Batter 
VALUES (8,7,7,286,271,26,3,9,4,0,0,1)

INSERT INTO dbo.Batter 
VALUES (9,13,13,541,412,121,8,41,20,1,3,2)

INSERT INTO dbo.Batter 
VALUES (10,15,13,368,322,74,5,34,12,0,2,3)

INSERT INTO dbo.Batter 
VALUES (11,12,10,424,332,92,0,32,3,0,4,4)

INSERT INTO dbo.Batter 
VALUES (12,7,7,286,271,26,3,9,4,0,0,1)

INSERT INTO dbo.Batter 
VALUES (13,13,13,541,412,121,8,41,20,1,3,2)

INSERT INTO dbo.Batter 
VALUES (14,15,13,379,322,74,5,34,12,1,2,3)

INSERT INTO dbo.Batter 
VALUES (15,12,10,404,332,89,0,32,3,0,3,4)


--Bowler Table
INSERT INTO dbo.Bowler  
VALUES (16,12,12,180,192,2,12,12,8,17,1)

INSERT INTO dbo.Bowler  
VALUES (17,11,11,120,131,4,15,12,6.2,13,0)

INSERT INTO dbo.Bowler  
VALUES (18,13,12,180,192,0,23,12,11.7,16.7,0)

INSERT INTO dbo.Bowler  
VALUES (19,13,13,220,201,0,14,12,5.94,17.5,1)

INSERT INTO dbo.Bowler  
VALUES (20,11,11,187,221,2,16,12,6.9,15.7,0)

INSERT INTO dbo.Bowler  
VALUES (21,7,7,125,192,0,19,13,8,16,0)

INSERT INTO dbo.Bowler  
VALUES (22,8,8,104,183,1,15,26,5.6,11,1)

INSERT INTO dbo.Bowler  
VALUES (23,11,11,167,234,0,12,22,6.8,12,0)

INSERT INTO dbo.Bowler  
VALUES (24,4,4,76,156,0,17,12,7.8,17.5,0)

INSERT INTO dbo.Bowler  
VALUES (25,14,13,224,192,1,23,8,8.4,13.4,0)

INSERT INTO dbo.Bowler  
VALUES (26,9,9,110,190,0,19,31,8.2,9.8,0)

INSERT INTO dbo.Bowler  
VALUES (27,9,8,98,192,2,16,16,7.6,22.3,0)

INSERT INTO dbo.Bowler  
VALUES (28,10,9,121,163,1,19,15,9.5,19.4,0)

INSERT INTO dbo.Bowler  
VALUES (29,12,12,145,180,0,13,24,11.2,22.8,0)

INSERT INTO dbo.Bowler  
VALUES (30,13,13,160,217,0,4,36,6.8,15,1)


--WicketKeeper Table
INSERT INTO dbo.WicketKeeper 
VALUES (31,13,13,793,13,4)

INSERT INTO dbo.WicketKeeper 
VALUES (32,8,7,722,9,2)

INSERT INTO dbo.WicketKeeper 
VALUES (33,14,14,894,9,7)

INSERT INTO dbo.WicketKeeper 
VALUES (34,14,14,925,11,9)

INSERT INTO dbo.WicketKeeper 
VALUES (35,12,10,834,17,6)

INSERT INTO dbo.WicketKeeper 
VALUES (36,11,10,766,15,3)

INSERT INTO dbo.WicketKeeper 
VALUES (37,14,13,965,13,11)

INSERT INTO dbo.WicketKeeper 
VALUES (38,13,13,734,19,

INSERT INTO dbo.WicketKeeper 
VALUES (39,11,10,809,15,4)

INSERT INTO dbo.WicketKeeper 
VALUES (40,12,12,774,12,7)


--Venue Table
INSERT INTO Venue VALUES (1, 'Wankhede Stadium', 'Mumbai', 'India', 33500, 1);
INSERT INTO Venue VALUES (2, 'Chinnaswamy Stadium', 'Bangalore', 'India', 40000, 2);
INSERT INTO Venue VALUES (3, 'Ragiv Gandhi Stadium', 'Hyderabad', 'India', 55000, 3);
INSERT INTO Venue VALUES (4, 'Eden Gardens', 'Kolkata', 'India', 50000, 4);
INSERT INTO Venue VALUES (5, 'Sawai Mansingh Stadium', 'Jaipur', 'India', 55000, 5);
INSERT INTO Venue VALUES (6, 'Firoz Shah Kotla Stadium', 'Delhi', 'India', 45000, 6);
INSERT INTO Venue VALUES (7, 'HPCA Stadium', 'Gandhinagar', 'India', 65000, 7);
INSERT INTO Venue VALUES (8, 'Chidambaram Stadium', 'Chennai', 'India', 35000, 8);
INSERT INTO Venue VALUES (9, 'Bindra Stadium', 'Pune', 'India', 55000, 9);
INSERT INTO Venue VALUES (10, 'Brabourse Stadium', 'Surat', 'India', 75000, 10);


--Schedule Table 
INSERT INTO Schedule VALUES (1, 1, 2022, '10/01/2022', NULL, NULL, 1, 2, 1);
INSERT INTO Schedule VALUES (2, 2, 2022, '10/02/2022', NULL, NULL, 2, 3, 2);
INSERT INTO Schedule VALUES (3, 3, 2022, '10/03/2022', NULL, NULL, 3, 4, 3);
INSERT INTO Schedule VALUES (4, 4, 2022, '10/04/2022', NULL, NULL, 4, 5, 4);
INSERT INTO Schedule VALUES (5, 5, 2022, '10/05/2022', NULL, NULL, 5, 6, 5);
INSERT INTO Schedule VALUES (6, 6, 2022, '10/06/2022', NULL, NULL, 6, 7, 6);
INSERT INTO Schedule VALUES (7, 7, 2022, '10/07/2022', NULL, NULL, 7, 8, 7);
INSERT INTO Schedule VALUES (8, 8, 2022, '10/08/2022', NULL, NULL, 8, 9, 8);
INSERT INTO Schedule VALUES (9, 9, 2022, '10/09/2022', NULL, NULL, 9, 10, 9);
INSERT INTO Schedule VALUES (10, 10, 2022, '10/10/2022', NULL, NULL, 10, 1, 10);


--RunType Table
INSERT INTO RunType VALUES (1, 12, 4);
INSERT INTO RunType VALUES (2, 13, 6);
INSERT INTO RunType VALUES (3, 14, 1);
INSERT INTO RunType VALUES (4, 15, 2);
INSERT INTO RunType VALUES (5, 16, 3);
INSERT INTO RunType VALUES (6, 17, 0);
INSERT INTO RunType VALUES (7, 18, 0);
INSERT INTO RunType VALUES (8, 19, 0);
INSERT INTO RunType VALUES (9, 25, 0);
INSERT INTO RunType VALUES (10, 26, 0);


--Delivery Table
INSERT INTO Delivery VALUES (1, 6, 1, 1, 'Batting', 16, 7, NULL, 140, 4);
INSERT INTO Delivery VALUES (2, 6, 1, 2, 'Batting', 16, 7, NULL, NULL, 1);
INSERT INTO Delivery VALUES (3, 6, 1, 3, 'Batting', 16, 7, NULL, 142, 4);
INSERT INTO Delivery VALUES (4, 6, 1, 4, 'Batting', 16, 7, NULL, 140, 4);
INSERT INTO Delivery VALUES (5, 6, 1, 5, 'Batting', 16, 7, NULL, 135, 4);
INSERT INTO Delivery VALUES (6, 6, 1, 6, 'Batting', 16, 7, NULL, 135, 5);
INSERT INTO Delivery VALUES (7, 6, 2, 1, 'Batting', 26, 7, NULL, 142, 4);
INSERT INTO Delivery VALUES (8, 6, 2, 2, 'Batting', 26, 7, NULL, NULL, 4);
INSERT INTO Delivery VALUES (9, 6, 2, 3, 'Batting', 26, 7, NULL, 135, 4);
INSERT INTO Delivery VALUES (10, 6, 2, 4, 'Batting', 26, 7, NULL, 135, 5);


--PlayerLeaderBoard Table
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,20,1,4)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,20,2,6)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,21,1,6)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,21,2,7)

INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,22,1,4)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2022,22,2,7)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,20,1,2)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,20,2,11)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,21,1,11)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,21,2,15)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,22,1,2)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2021,22,2,15)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,20,1,14)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,20,2,12)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,21,1,14)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,21,2,13)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,22,1,14)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2020,22,2,11)

INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,20,1,8)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,20,2,7)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,21,1,9)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,21,2,7)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,22,1,8)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2019,22,2,7)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,20,1,6)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,20,2,4)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,21,1,4)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,21,2,6)


INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,22,1,6)
INSERT INTO dbo.PlayerLeaderboard 
VALUES (2018,22,2,4)


--TournamentAwards Table
INSERT INTO dbo.TournamentAwards 
VALUES (2021,10,4)

INSERT INTO dbo.TournamentAwards 
VALUES (2021,11,22)

INSERT INTO dbo.TournamentAwards 
VALUES (2020,10,7)

INSERT INTO dbo.TournamentAwards 
VALUES (2020,11,22)

INSERT INTO dbo.TournamentAwards 
VALUES (2019,10,4)

INSERT INTO dbo.TournamentAwards 
VALUES (2019,11,19)

INSERT INTO dbo.TournamentAwards 
VALUES (2018,10,9)

INSERT INTO dbo.TournamentAwards 
VALUES (2018,11,21)

INSERT INTO dbo.TournamentAwards 
VALUES (2017,10,11)

INSERT INTO dbo.TournamentAwards 
VALUES (2017,11,18)


--MatchResult Table
INSERT INTO MatchResult VALUES (1, 1, NULL, 120, 110, 10, 8, 2);
INSERT INTO MatchResult VALUES (2, 2, NULL, 130, 100, 9, 7, 2);
INSERT INTO MatchResult VALUES (3, 4, NULL, 100, 110, 10, 8, 3);
INSERT INTO MatchResult VALUES (4, 4, NULL, 150, 140, 5, 4, 5);
INSERT INTO MatchResult VALUES (5, 6, NULL, 120, 170, 3, 5, 5);
INSERT INTO MatchResult VALUES (6, 6, NULL, 180, 110, 1, 3, 7);
INSERT INTO MatchResult VALUES (7, 8, NULL, 120, 145, 1, 6, 7);
INSERT INTO MatchResult VALUES (8, 8, NULL, 100, 90, 10, 8, 9);
INSERT INTO MatchResult VALUES (9, 9, NULL, 150, 110, 7, 8, 10);
INSERT INTO MatchResult VALUES (10, NULL, 'Rain Stopped Play', 12, 100, 10, 8, 1);


--MatchAwards Table
INSERT INTO MatchAwards VALUES (1, 23, 21);
INSERT INTO MatchAwards VALUES (1, 24, 11);
INSERT INTO MatchAwards VALUES (2, 23, 2);
INSERT INTO MatchAwards VALUES (2, 24, 12);
INSERT INTO MatchAwards VALUES (3, 23, 24);
INSERT INTO MatchAwards VALUES (3, 24, 14);
INSERT INTO MatchAwards VALUES (4, 23, 4);
INSERT INTO MatchAwards VALUES (4, 24, 14);
INSERT INTO MatchAwards VALUES (5, 23, 15);
INSERT INTO MatchAwards VALUES (5, 24, 25);


--PointsTable Table
INSERT INTO dbo.PointsTable 
VALUES (2022,1,5,18)

INSERT INTO dbo.PointsTable 
VALUES (2022,2,2,14)

INSERT INTO dbo.PointsTable 
VALUES (2022,3,1,14)

INSERT INTO dbo.PointsTable 
VALUES (2022,4,10,12)

INSERT INTO dbo.PointsTable 
VALUES (2022,5,6,11)

INSERT INTO dbo.PointsTable 
VALUES (2022,6,9,9)

INSERT INTO dbo.PointsTable 
VALUES (2022,7,7,8)

INSERT INTO dbo.PointsTable 
VALUES (2022,8,3,6)

INSERT INTO dbo.PointsTable 
VALUES (2022,9,8,4)

INSERT INTO dbo.PointsTable 
VALUES (2022,10,4,4)

INSERT INTO dbo.PointsTable 
VALUES (2021,1,2,18)

INSERT INTO dbo.PointsTable 
VALUES (2021,2,5,14)

INSERT INTO dbo.PointsTable 
VALUES (2021,3,4,14)

INSERT INTO dbo.PointsTable 
VALUES (2021,4,10,12)

INSERT INTO dbo.PointsTable 
VALUES (2021,5,7,11)

INSERT INTO dbo.PointsTable 
VALUES (2021,6,8,9)

INSERT INTO dbo.PointsTable 
VALUES (2021,7,6,8)

INSERT INTO dbo.PointsTable 
VALUES (2021,8,3,6)

INSERT INTO dbo.PointsTable 
VALUES (2021,9,6,4)

INSERT INTO dbo.PointsTable 
VALUES (2021,10,1,4)


--Staff Table
INSERT INTO dbo.Staff 
VALUES (1,'Harsha','Bhogle',7,'9/8/1965','9/8/2011','India',1)
INSERT INTO dbo.Staff 
VALUES (2,'Vikram','Rathode',8,'8/7/1965','8/7/2018','India',1)
INSERT INTO dbo.Staff 
VALUES (3,'Simon','Katich',9,'7/6/1970','7/6/2013','India',1)

INSERT INTO dbo.Staff 
VALUES (4,'Binoy','Sharma',7,'5/4/1972','5/4/2014','India',2)
INSERT INTO dbo.Staff 
VALUES (5,'Shukla','Rahul',8,'4/5/1967','4/5/2015','India',2)
INSERT INTO dbo.Staff 
VALUES (6,'Sanjay','Bangar',9,'11/15/1972','11/15/2019','India',2)

INSERT INTO dbo.Staff 
VALUES (7,'Grame','Flower',7,'12/23/1969','12/23/2017','India',3)
INSERT INTO dbo.Staff 
VALUES (8,'John','Trott',8,'12/5/1964','12/5/2018','India',3)
INSERT INTO dbo.Staff 
VALUES (9,'Vijay','Antony',9,'9/17/1974','9/17/2008','India',3)

INSERT INTO dbo.Staff 
VALUES (10,'Tirumal','Suman',7,'5/5/1965','5/5/2014','India',4)
INSERT INTO dbo.Staff 
VALUES (11,'Venugopal','Kumar',8,'1/14/1970','1/14/2016','India',4)
INSERT INTO dbo.Staff 
VALUES (12,'Liton','Das',9,'08/09/1976','8/9/2010','India',4)

INSERT INTO dbo.Staff 
VALUES (13,'Gautham','Gambir',7,'6/6/1966','6/6/2018','India',5)
INSERT INTO dbo.Staff 
VALUES (14,'Sohail','Tanveer',8,'3/2/1972','3/3/2017','India',5)
INSERT INTO dbo.Staff 
VALUES (15,'Yusuf','Patan',9,'4/3/1963','4/2/2021','India',5)

INSERT INTO dbo.Staff 
VALUES (16,'Andrew','Flintoff',7,'7/7/1967','4/7/2010','India',6)
INSERT INTO dbo.Staff 
VALUES (17,'Shaun','Pollock',8,'8/7/1959','8/7/2017','India',6)
INSERT INTO dbo.Staff 
VALUES (18,'Tom','Latham',9,'9/8/1967','9/6/2015','India',6)

INSERT INTO dbo.Staff 
VALUES (19,'Jack','Kallis',7,'8/8/1968','8/8/2014','India',7)
INSERT INTO dbo.Staff 
VALUES (20,'Gary','Kristen',8,'11/14/1974','11/14/2019','India',7)
INSERT INTO dbo.Staff 
VALUES (21,'Andy','Flower',9,'11/15/1975','11/15/2006','India',7)

INSERT INTO dbo.Staff 
VALUES (22,'Sanath','Jayasuriya',7,'9/9/1969','9/9/2007','India',
INSERT INTO dbo.Staff 
VALUES (23,'M','Muralitharan',8,'12/12/1972','12/12/2016','India',
INSERT INTO dbo.Staff 
VALUES (24,'C','Atapatu',9,'11/10/1971','11/10/2014','India',

INSERT INTO dbo.Staff 
VALUES (25,'Kumara','Sangakara',7,'10/10/1970','10/10/2018','India',9)
INSERT INTO dbo.Staff 
VALUES (26,'Mitchell','Johnson',8,'09/10/1969','9/10/2016','India',9)
INSERT INTO dbo.Staff 
VALUES (27,'Sharma','Singh',9,'10/11/1970','10/11/2017','India',9)

INSERT INTO dbo.Staff 
VALUES (28,'Brett','lee',7,'11/11/1971','11/11/2013','India',10)
INSERT INTO dbo.Staff 
VALUES (29,'Ricky','Ponting',8,'12/13/1973','12/13/2011','India',10)
INSERT INTO dbo.Staff 
VALUES (30,'Jonty','Rhodes',9,'11/13/1972','11/13/2020','India',10)


--VenueStatistics Table
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (1, 1);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (1, 2);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (2, 1);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (2, 2);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (3, 1);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (3, 2);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (4, 1);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (4, 2);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (5, 1);
INSERT INTO VenueStatistics(VenueID, CategoryID) VALUES (5, 2);


