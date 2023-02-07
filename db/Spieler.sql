drop table SPIELER;

CREATE TABLE SPIELER ( 
	SPIELER_ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
	TEAM_ID int NOT NULL, 
	VORNAME char NOT NULL, 
	NAME char NOT NULL, 
	TOR int NOT NULL default 0, 
	GELB int NOT NULL default 0, 
	ROT int NOT NULL default 0, 
	CONSTRAINT FK_TEAM_ID FOREIGN KEY(TEAM_ID) REFERENCES TEAM(TEAM_ID) 
)