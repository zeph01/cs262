1. What are the (active) URLs for your data service?
https://dry-forest-85797.herokuapp.com
https://dry-forest-85797.herokuapp.com/players
https://dry-forest-85797.herokuapp.com/games
https://dry-forest-85797.herokuapp.com/players/:id

router.put("/players/:id", updatePlayer);
router.post('/players', createPlayer);
router.delete('/players/:id', deletePlayer);


2. Which of these endpoints implement actions that are idempotent? nullipotent?
router.get("/", readHelloMessage); //nullipotent
router.get("/players", readPlayers); //nullipotent
router.get("/players/:id", readPlayer); //nullipotent
router.put("/players/:id", updatePlayer); //idempotent
router.post('/players', createPlayer); //not idempotent or nullipotent
router.delete('/players/:id', deletePlayer); //idempotent
router.get("/game1",readGame1); //nullipotent

Is the service RESTful? If not, why not? If so, what key features make it RESTful.
This service is RESTful because it uses Https; it is stateless since it does not track visits; 
it gives structured urls and also transfers data as a "json."


Is there any evidence in your implementation of an impedance mismatch?
No, there is no impedence mismatch because I could retrieve data in the same data type that I needed them to be.





