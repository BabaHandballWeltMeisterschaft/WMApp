/*DROP TABLE STADION;*/

CREATE TABLE STADION ( 
	STADION_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	NAME char NOT NULL, 
	STADT char NOT NULL,
	LAND char NOT NULL, 
	KAPAZITÄT int 
);

INSERT INTO STADION(NAME, STADT, LAND, KAPAZITÄT)
VALUES
("Tele 2 Arena", "Stockholm", "Schweden", 20000),
("Tauron Arena", "Krakau", "Polen", 15000),
("Malmö Arena", "Malmö", "Schweden", 12600),
("Scandinavium", "Göteborg", "Schweden", 12000),
("Ergo Areba", "Danzig", "Polen", 11400),
("Spodek", "Katowice", "Polen", 11000),
("Hausqvarna Garden", "Jönköping", "Schweden", 7000),
("Orlen Arena", "Plock", "Polen", 5500),
("Kristianstadt Arena", "Kristianstadt", "Schweden", 4700);

