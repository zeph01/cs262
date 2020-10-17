This sample Monopoly database and set of queries is used in Calvin College
CS 262 [lab 7](https://cs.calvin.edu/courses/cs/262/kvlinden/07is/lab.html).

Updated Monopoly Schema:\
Player(<ins>ID</ins>, emailAddress, name)\
PlayerGame(<ins>gameID</ins>, <ins>playerID</ins>, score, cash, position)\
Game (<ins>ID</ins>, time)\
GameProperty (<ins>gameID</ins>, <ins>propertyID</ins>, playerID, progress)\
Property(<ins>ID</ins>, name)