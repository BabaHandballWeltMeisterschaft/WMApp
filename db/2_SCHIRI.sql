/*drop table SCHIRI;*/

CREATE TABLE SCHIRI ( 
	SCHIRI_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	VORNAME char NOT NULL,
	NAME char NOT NULL, 
	LAND char NOT NULL
);

INSERT INTO SCHIRI(NAME, VORNAME, LAND)
VALUES
("Youcef", "Belkhiri", "Algerien"),
("Julian", "Grillo Lopez", "Argentinien"),
("Maria", "Ines Paolantoni", "Argentinien"),
("Matija", "Gubica","Kroatien"),
("Vaclaf", "Horacek","Tschechien"),
("Mads", "Hansen", "Dänemark"),
("Alaa", "Emam", "Ägypten"),
("Ignacio", "Garcia", "Spanien"),
("Julie", "Bonaventura", "Frankreich"),
("Karim", "Gasmi", "Frankreich"),
("Robert", "Schulze", "Deutschland"),
("Maike", "Merz", "Deutschland"),
("Adam", "Biro","Ungarn"),
("Bon-Ok", "Koo","Korea"),
("Mindaugas","Gatelis","Litauen"),
("Gjorgji", "Nachevski","Nordmazedonien"),
("Ivan", "Pavicevic","Montenegro"),
("Havard", "Kleven","Norwegen"),
("Duarte", "Santos","Portugal"),
("Bojan", "Lah","Slowenien"),
("Marko", "Sekulic","Serbien"),
("Arthur", "Brunner","Schweiz"),
("Mirza", "Kurtagic", "Schweden"),
("Kursad", "Erdogan", "Türkei");