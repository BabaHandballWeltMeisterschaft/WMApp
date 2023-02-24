drop table TMP;
create table TMP
(
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 team_id int,
 punkte int
);


drop trigger Punkte;

CREATE TRIGGER Punkte AFTER Insert ON SPIEL
for each row
begin
			insert into TMP(team_id,punkte) values (new.TEAM1_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '2'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '0'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END);
			insert into TMP(team_id,punkte) values (new.TEAM2_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '0'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '2'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END);
					 
			UPDATE TEAM
				SET PUNKTE = PUNKTE +(SELECT SUM(punkte) FROM TMP WHERE team_id = TEAM.TEAM_ID)
				WHERE EXISTS (SELECT 1 FROM TMP WHERE team_id = TEAM.TEAM_ID);
				
			DELETE FROM TMP;

END;


