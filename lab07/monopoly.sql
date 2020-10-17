--
-- This SQL script builds a monopoly database, deleting any pre-existing version.
--
-- @author kvlinden
-- @version Summer, 2015
--

-- Drop previous versions of the tables if they they exist, in reverse order of foreign keys.
DROP TABLE IF EXISTS PlayerGame;
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Player;
DROP TABLE IF EXISTS GameProperty;
DROP TABLE IF EXISTS Property;

-- Create the schema.
CREATE TABLE Game (
	ID integer PRIMARY KEY, 
	time timestamp
	);

CREATE TABLE Player (
	ID integer PRIMARY KEY, 
	emailAddress varchar(50) NOT NULL,
	name varchar(50),
	);

CREATE TABLE PlayerGame (
	gameID integer REFERENCES Game(ID), 
	playerID integer REFERENCES Player(ID),
	score integer,
	cash integer,
	position varchar(50) NOT NULL,
	PRIMARY KEY(gameID, playerID)
	);

CREATE TABLE GameProperty (
	playerID integer REFERENCES Player(ID),
	gameID integer REFERENCES Game(ID),
	propertyID integer REFERENCES Property(ID),
	progress varchar(50),
	PRIMARY KEY (gameID, propertyID),
	);

CREATE TABLE Property (
	ID integer PRIMARY KEY, 
	name varchar(50),
	);

-- Allow users to select data from the tables.
GRANT SELECT ON Game TO PUBLIC;
GRANT SELECT ON Player TO PUBLIC;
GRANT SELECT ON PlayerGame TO PUBLIC;
GRANT SELECT ON GameProperty TO PUBLIC;
GRANT SELECT ON Property TO PUBLIC;

-- Add sample records.
INSERT INTO Game VALUES (1, '2006-06-27 08:00:00');
INSERT INTO Game VALUES (2, '2006-06-28 13:20:00');
INSERT INTO Game VALUES (3, '2006-06-29 18:41:00');

INSERT INTO Player(ID, emailAddress) VALUES (1, 'me@calvin.edu');
INSERT INTO Player VALUES (2, 'king@gmail.edu', 'The King');
INSERT INTO Player VALUES (3, 'dog@gmail.edu', 'Dogbreath');

INSERT INTO PlayerGame VALUES (1, 1, 0.00, 2500, 'start');
INSERT INTO PlayerGame VALUES (1, 2, 0.00, 2500, 'start');
INSERT INTO PlayerGame VALUES (1, 3, 2350.00, 600, 'start');
INSERT INTO PlayerGame VALUES (2, 1, 1000.00, 800, 'start');
INSERT INTO PlayerGame VALUES (2, 2, 0.00, 2500, 'start');
INSERT INTO PlayerGame VALUES (2, 3, 500.00, 1800, 'start');
INSERT INTO PlayerGame VALUES (3, 2, 0.00, 2500, 'start');
INSERT INTO PlayerGame VALUES (3, 3, 5500.00, 1000, 'start');

INSERT INTO Property VALUES (1, 'Old Kent Road');
INSERT INTO Property VALUES (2, 'Whitechapel Road');
INSERT INTO Property VALUES (3, 'The Angel Islington');
INSERT INTO Property VALUES (4, 'Euston Road');
INSERT INTO Property VALUES (5, 'Pentonville Road');
INSERT INTO Property VALUES (6, 'Pall Mall');
INSERT INTO Property VALUES (7, 'Northhumrl Avenue');

INSERT INTO GameProperty VALUES (1, 3, 1, 'hotel');
INSERT INTO GameProperty VALUES (1, 3, 2, 'house');
INSERT INTO GameProperty VALUES (2, 1, 4, 'house');
INSERT INTO GameProperty VALUES (2, 1, 5, 'house');
INSERT INTO GameProperty VALUES (2, 3, 5, 'house');
INSERT INTO GameProperty VALUES (3, 3, 6, 'hotel');
INSERT INTO GameProperty VALUES (3, 3, 7, 'hotel');


