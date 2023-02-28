drop table TEAM1;
CREATE TABLE TEAM1 ( 
	TEAM_ID primary key,
	GRUPPE int NOT NULL, 
	NAME char NOT NULL, 
	PUNKTE int NOT NULL default 0 
);


insert into TEAM1
SELECT TEAM_ID, 1 as GRUPPE, NAME, 0 as PUNKTE
FROM TEAM t1
WHERE Gruppe = 1 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
OR Gruppe = 2 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
ORDER BY Gruppe, Punkte DESC;


insert into TEAM1
SELECT TEAM_ID, 2 as GRUPPE, NAME, 0 as PUNKTE
FROM TEAM t1
WHERE Gruppe = 3 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
OR Gruppe = 4 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
ORDER BY Gruppe, Punkte DESC;


insert into TEAM1
SELECT TEAM_ID, 3 as GRUPPE, NAME, 0 as PUNKTE
FROM TEAM t1
WHERE Gruppe = 5 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
OR Gruppe = 6 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
ORDER BY Gruppe, Punkte DESC;


insert into TEAM1
SELECT TEAM_ID, 4 as GRUPPE, NAME, 0 as PUNKTE
FROM TEAM t1
WHERE Gruppe = 7 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
OR Gruppe = 8 AND (
  SELECT COUNT(*)
  FROM TEAM t2
  WHERE t2.Gruppe = t1.Gruppe AND t2.Punkte > t1.Punkte
) < 3
ORDER BY Gruppe, Punkte DESC;