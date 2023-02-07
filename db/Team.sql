DROP TABLE TEAM;

CREATE TABLE TEAM ( 
	TEAM_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	GRUPPE int NOT NULL, 
	NAME char NOT NULL, 
	PUNKTE int NOT NULL default 0 
);

INSERT INTO TEAM(GRUPPE, NAME, PUNKTE)
VALUES
(1,'Spanien',6),
(1,'Montenegro',4),
(1,'Iran',2),
(1,'Chile',0),

(2,'Frankreich',6),
(2,'Slowenien',4),
(2,'Polen',2),
(2,'Saudi-Arabien',0),

(3,'Schweden',6),
(3,'Brasilien',4),
(3,'Kap Verde',2),
(3,'Uruguay',0),

(4,'Portugal',4),
(4,'Island',4),
(4,'Ungarn',4),
(4,'Südkorea',0),

(5,'Deutschland',6),
(5,'Serbien',4),
(5,'Katar',2),
(5,'Algerien',0),

(6,'Norwegen',6),
(6,'Niederlande',4),
(6,'Argentienen',2),
(6,'Nordmazedonien',0),

(7,'Ägypten',6),
(7,'Kroatien',4),
(7,'USA',2),
(7,'Marokko',0),

(8,'Dänemark',6),
(8,'Bahrain',3),
(8,'Belgien',2),
(8,'Tunesien',1);