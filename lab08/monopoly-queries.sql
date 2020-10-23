--
-- This SQL script implements sample queries on the Monopoly database
-- @author kvlinden
-- @version Summer, 2015
--
-- Modified by bs44
-- Added answers (as comments) to Exercise 8.1 and 8.2 from Lab8 of CS262

-- Get the number of Game records.
SELECT *
  FROM Game
  ;

-- Get the player records.
SELECT * 
  FROM Player
  ;

-- Get all the users with Calvin email addresses.
SELECT *
  FROM Player
 WHERE emailAddress LIKE '%calvin%'
 ;

-- Get the highest score ever recorded.
  SELECT score
    FROM PlayerGame
ORDER BY score DESC
   LIMIT 1
   ;

-- Get the cross-product of all the tables.
SELECT *
  FROM Player, PlayerGame, Game
  ;
  
--Answers to Exercise 8.1 and 8.2 from Lab8

--8.1a) Retrieve a list of all the games, ordered by date with the most recent game coming first.
--SELECT *
--FROM Game
--ORDER BY time DESC
--;

--8.1b) Retrieve all the games that occurred in the past week.
--SELECT *
--FROM Game
--WHERE time BETWEEN '2020-10-23' AND '2020-10-16'
--;

--8.1c) Retrieve a list of players who have (non-NULL) names.
--SELECT *
--FROM Player
--WHERE name IS NOT NULL
--;

--8.1d) Retrieve a list of IDs for players who have some game score larger than 2000.
--SELECT ID
--FROM Player, PlayerGame
--WHERE score > 2000
-- AND Player.ID = playerID
--;

--8.1e) Retrieve a list of players who have GMail accounts.
--SELECT *
--FROM Player
--WHERE emailAddress LIKE '%gmail%'
--;

--8.2a) Retrieve all “The King”’s game scores in decreasing order.
--SELECT score
--FROM PlayerGame, Player
--WHERE name = 'The King'
-- AND Player.ID = playerID  
--ORDER BY score DESC
--;

--8.2b) Retrieve the name of the winner of the game played on 2006-06-28 13:20:00.
--SELECT name
--FROM PlayerGame, Player, Game
--WHERE time = '2006-06-28 13:20:00'
-- AND Game.ID = gameID 
-- AND Player.ID = playerID 
--ORDER BY score DESC
--LIMIT 1
--;

--8.2c) So what does that P1.ID < P2.ID clause do in the last example query?
--Ans:
--P1.ID < P2.ID makes sure the two player IDs are not the same i.e not choosing the same person.

--8.2d) The query that joined the Player table to itself seems rather contrived. 
--Can you think of a realistic situation in which you’d want to join a table to itself?
--Ans:
--Suppose if I want to find the list of people with the same family name (i.e people from same family) 
--from a list of members in a club 
