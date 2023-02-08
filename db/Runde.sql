/*DROP TABLE RUNDE;*/

CREATE TABLE RUNDE ( 
	RUNDE_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	NAME char NOT NULL 
);

INSERT INTO RUNDE(NAME)
VALUES
("Vorrunde 1"),
("Vorrunde 2"),
("Vorrunde 3"),
("Hauptrunde 1"),
("Hauptrunde 2"),
("Hauptrunde 3"),
("Viertelfinale"),
("Halbfinale"),
("Spiel um Platz 3"),
("Finale");