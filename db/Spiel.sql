drop table SPIEL;

CREATE TABLE SPIEL (
	SPIEL_ID	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Datum		datetime NOT NULL,
	TEAM1_ID	int NOT NULL,
	TEAM2_ID	int NOT NULL,
	STADION_ID	int NOT NULL,
	TOR_TEAM1	int,
	TOR_TEAM2	int,
	SCHIRI_ID	int NOT NULL,
	RUNDE_ID	int NOT NULL,
	CONSTRAINT FK_TEAM2_ID FOREIGN KEY(TEAM2_ID) REFERENCES TEAM(TEAM_ID),
	CONSTRAINT FK_STADION_ID FOREIGN KEY(STADION_ID) REFERENCES STADION(STADION_ID),
	CONSTRAINT FK_TEAM1_ID FOREIGN KEY(TEAM1_ID) REFERENCES TEAM(TEAM_ID),
	CONSTRAINT FK_SCHIRI_ID FOREIGN KEY(SCHIRI_ID) REFERENCES SCHIRI(SCHIRI_ID)
	CONSTRAINT FK_RUNDE_ID FOREIGN KEY(RUNDE_ID) REFERENCES RUNDE(RUNDE_ID)
);

INSERT INTO SPIEL(Datum, TEAM1_ID, TEAM2_ID, STADION_ID, TOR_TEAM1, TOR_TEAM2, SCHIRI_ID,RUNDE_ID)
VALUES
/*Vorrunde*/
('11.01.2023 16:00',4,3,1,24,25,1,1),
('11.01.2023 16:00',1,2,1,30,25,2,1),
('13.01.2023 16:00',2,3,1,34,31,3,2),
('13.01.2023 16:00',1,4,1,34,26,4,2),
('15.01.2023 16:00',2,4,1,35,33,5,3),
('15.01.2023 16:00',3,1,1,22,35,6,3),

('11.01.2023 17:00',5,7,2,26,24,7,1),
('11.01.2023 17:00',8,6,2,19,33,8,1),
('13.01.2023 17:00',5,8,2,41,23,9,2),
('13.01.2023 17:00',7,6,2,23,32,10,2),
('15.01.2023 17:00',6,5,2,31,35,11,3),
('15.01.2023 17:00',7,8,2,27,24,12,3),

('11.01.2023 18:00',9,10,3,26,18,13,1),
('11.01.2023 18:00',11,12,3,33,25,14,1),
('13.01.2023 18:00',9,11,3,34,27,15,2),
('13.01.2023 18:00',10,12,3,35,24,16,2),
('15.01.2023 18:00',10,11,3,30,28,17,3),
('15.01.2023 18:00',12,9,3,12,47,18,3),

('11.01.2023 19:00',15,16,4,35,27,19,1),
('11.01.2023 19:00',14,13,4,30,26,20,1),
('13.01.2023 19:00',13,16,4,32,24,21,2),
('13.01.2023 19:00',14,15,4,28,30,22,2),
('15.01.2023 19:00',16,14,4,25,38,23,3),
('15.01.2023 19:00',13,15,4,27,20,24,3),

('12.01.2023 16:00',17,19,5,31,27,1,1),
('12.01.2023 16:00',18,20,5,36,27,2,1),
('14.01.2023 16:00',17,18,5,34,33,3,2),
('14.01.2023 16:00',19,20,5,29,24,4,2),
('16.01.2023 16:00',20,17,5,21,37,5,3),
('16.01.2023 16:00',19,18,5,24,34,6,3),

('12.01.2023 17:00',23,22,6,19,29,7,1),
('12.01.2023 17:00',21,24,6,39,27,8,1),
('14.01.2023 17:00',24,22,6,24,34,9,2),
('14.01.2023 17:00',21,23,6,32,21,10,2),
('16.01.2023 17:00',24,23,6,26,35,11,3),
('16.01.2023 17:00',22,21,6,26,27,12,3),

('12.01.2023 18:00',28,27,7,27,28,13,1),
('12.01.2023 18:00',26,25,7,22,31,14,1),
('14.01.2023 18:00',25,28,7,30,19,15,2),
('14.01.2023 18:00',26,27,7,40,22,16,2),
('16.01.2023 18:00',25,27,7,35,16,17,3),
('16.01.2023 18:00',26,28,7,36,24,18,3),

('12.01.2023 19:00',30,32,8,27,27,19,1),
('12.01.2023 19:00',29,31,8,43,28,20,1),
('14.01.2023 19:00',31,32,8,31,29,21,2),
('14.01.2023 19:00',29,30,8,36,21,22,2),
('16.01.2023 19:00',31,30,8,28,30,23,3),
('16.01.2023 19:00',32,29,8,21,34,24,3),

/*Hauptrunde*/
('18.01.2023 16:00',3,6,9,21,38,1,4),
('18.01.2023 16:00',13,10,8,28,28,2,4),
('18.01.2023 16:00',5,2,7,35,24,3,4),
('18.01.2023 16:00',11,14,6,30,40,4,4),
('18.01.2023 16:00',1,7,5,27,23,5,4),
('18.01.2023 16:00',9,15,4,37,28,6,4),
('19.01.2023 16:00',19,22,3,30,32,7,4),
('19.01.2023 16:00',27,30,2,27,32,8,4),
('19.01.2023 16:00',17,23,1,39,19,9,4),
('19.01.2023 16:00',25,31,9,33,28,10,4),
('19.01.2023 16:00',21,18,8,31,28,11,4),
('19.01.2023 16:00',29,26,7,32,32,12,4),

('20.01.2023 16:00',6,1,6,26,31,13,5),
('20.01.2023 16:00',11,13,5,23,35,14,5),
('20.01.2023 16:00',3,5,4,29,41,15,5),
('20.01.2023 16:00',10,15,3,25,28,16,5),
('20.01.2023 16:00',2,7,2,20,27,17,5),
('20.01.2023 16:00',14,9,1,30,35,18,5),
('21.01.2023 16:00',18,23,9,28,22,19,5),
('21.01.2023 16:00',30,25,8,22,26,20,5),
('21.01.2023 16:00',19,21,7,17,30,21,5),
('21.01.2023 16:00',26,31,6,34,26,22,5),
('21.01.2023 16:00',22,17,5,26,33,23,5),
('21.01.2023 16:00',27,29,4,24,33,24,5),

('22.01.2023 16:00',2,6,3,23,31,1,6),
('22.01.2023 16:00',11,15,2,30,42,2,6),
('22.01.2023 16:00',3,7,1,22,26,3,6),
('22.01.2023 16:00',10,14,9,37,41,4,6),
('22.01.2023 16:00',9,13,8,32,30,5,6),
('22.01.2023 16:00',1,5,7,26,28,6,6),
('23.01.2023 16:00',19,23,6,22,26,7,6),
('23.01.2023 16:00',27,31,5,24,22,8,6),
('23.01.2023 16:00',18,22,4,32,30,9,6),
('23.01.2023 16:00',26,30,3,43,32,10,6),
('23.01.2023 16:00',17,21,2,26,28,11,6),
('23.01.2023 16:00',25,29,1,25,30,12,6),

/*Viertelfinale*/
('25.01.2023 16:00',21,1,9,34,35,13,7),
('25.01.2023 17:00',29,15,8,40,23,14,7),
('25.01.2023 18:00',5,17,7,35,28,15,7),
('25.01.2023 19:00',9,25,6,26,22,16,7),

/*Halbfinale*/
('27.01.2023 16:00',1,29,3,23,26,17,8),
('27.01.2023 17:00',5,9,2,31,26,18,8),

/*Spiel um Platz 3*/
('29.01.2023 18:00',9,1,1,36,39,19,9),

/*Finale*/
('29.01.2023 20:00',5,29,1,29,34,20,10);