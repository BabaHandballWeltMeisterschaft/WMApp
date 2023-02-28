DROP TABLE TEAM;

CREATE TABLE TEAM ( 
	TEAM_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	GRUPPE int NOT NULL, 
	NAME char NOT NULL, 
	PUNKTE int NOT NULL default 0 
);

INSERT INTO TEAM(GRUPPE, NAME, PUNKTE)
VALUES
(1,'Spanien',0),
(1,'Montenegro',0),
(1,'Iran',0),
(1,'Chile',0),

(2,'Frankreich',0),
(2,'Slowenien',0),
(2,'Polen',0),
(2,'Saudi-Arabien',0),

(3,'Schweden',0),
(3,'Brasilien',0),
(3,'Kap Verde',0),
(3,'Uruguay',0),

(4,'Portugal',0),
(4,'Island',0),
(4,'Ungarn',0),
(4,'Südkorea',0),

(5,'Deutschland',0),
(5,'Serbien',0),
(5,'Katar',0),
(5,'Algerien',0),

(6,'Norwegen',0),
(6,'Niederlande',0),
(6,'Argentienen',0),
(6,'Nordmazedonien',0),

(7,'Ägypten',0),
(7,'Kroatien',0),
(7,'USA',0),
(7,'Marokko',0),

(8,'Dänemark',0),
(8,'Bahrain',0),
(8,'Belgien',0),
(8,'Tunesien',0);