/*drop table TMP;
drop trigger T_VORRUNDE_PUNKTE;*/

create table TMP
(
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 team_id int,
 punkte int,
 runde_id int
);


CREATE TRIGGER T_VORRUNDE_PUNKTE AFTER Insert ON SPIEL
for each row
begin
			insert into TMP(team_id,punkte, runde_id) values (new.TEAM1_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '2'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '0'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END, new.runde_id);
			insert into TMP(team_id,punkte, runde_id) values (new.TEAM2_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '0'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '2'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END, new.runde_id);
					 
			UPDATE TEAM
				SET VORRUNDEN_PUNKTE = VORRUNDEN_PUNKTE +(SELECT SUM(punkte) FROM TMP WHERE team_id = TEAM.TEAM_ID)
				WHERE EXISTS (SELECT 1 FROM TMP WHERE team_id = TEAM.TEAM_ID and runde_id < 4);
				
			DELETE FROM TMP;

END;


