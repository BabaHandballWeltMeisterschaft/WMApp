DROP TABLE TEAM;

CREATE TABLE TEAM ( 
	TEAM_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	VOR_GRUPPE int NOT NULL,
	HAUPT_GRUPPE int NOT NULL,
	NAME char NOT NULL, 
	VORRUNDEN_PUNKTE int NOT NULL default 0,
	HAUPT_PUNKTE int NOT NULL default 0
);

INSERT INTO TEAM(VOR_GRUPPE, HAUPT_GRUPPE, NAME, HAUPT_PUNKTE)
VALUES
(1,1,'Spanien',4),
(1,1,'Montenegro',2),
(1,1,'Iran',0),
(1,0,'Chile',0),

(2,1,'Frankreich',4),
(2,1,'Slowenien',2),
(2,1,'Polen',0),
(2,0,'Saudi-Arabien',0),

(3,2,'Schweden',4),
(3,2,'Brasilien',2),
(3,2,'Kap Verde',0),
(3,0,'Uruguay',0),

(4,2,'Portugal',2),
(4,2,'Island',2),
(4,2,'Ungarn',2),
(4,0,'Südkorea',0),

(5,3,'Deutschland',4),
(5,3,'Serbien',2),
(5,3,'Katar',0),
(5,0,'Algerien',0),

(6,3,'Norwegen',4),
(6,3,'Niederlande',2),
(6,3,'Argentienen',0),
(6,0,'Nordmazedonien',0),

(7,4,'Ägypten',4),
(7,4,'Kroatien',2),
(7,4,'USA',0),
(7,0,'Marokko',0),

(8,4,'Dänemark',4),
(8,4,'Bahrain',2),
(8,4,'Belgien',0),
(8,4,'Tunesien',0);