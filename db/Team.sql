DROP TABLE TEAM;

CREATE TABLE TEAM ( 
	TEAM_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	GRUPPE int NOT NULL, 
	NAME char NOT NULL, 
	VORRUNDE_PUNKTE int NOT NULL default 0,
	HAUPTRUNDE_PUNKTE int NOT NULL default 0 
);

INSERT INTO TEAM(GRUPPE, NAME)
VALUES
(1,'Spanien'),
(1,'Montenegro'),
(1,'Iran'),
(1,'Chile'),

(2,'Frankreich'),
(2,'Slowenien'),
(2,'Polen'),
(2,'Saudi-Arabien'),

(3,'Schweden'),
(3,'Brasilien'),
(3,'Kap Verde'),
(3,'Uruguay'),

(4,'Portugal'),
(4,'Island'),
(4,'Ungarn'),
(4,'Südkorea'),

(5,'Deutschland'),
(5,'Serbien'),
(5,'Katar'),
(5,'Algerien'),

(6,'Norwegen'),
(6,'Niederlande'),
(6,'Argentienen'),
(6,'Nordmazedonien'),

(7,'Ägypten'),
(7,'Kroatien'),
(7,'USA'),
(7,'Marokko'),

(8,'Dänemark'),
(8,'Bahrain'),
(8,'Belgien'),
(8,'Tunesien');