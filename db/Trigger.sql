drop table test;
create table test
(
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, 
 team_id int,
 punkte int
);


drop trigger Punkte;

CREATE TRIGGER Punkte AFTER Insert ON SPIEL
for each row
begin
			insert into test(team_id,punkte) values (new.TEAM1_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '2'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '0'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END);
			insert into test(team_id,punkte) values (new.TEAM2_ID,
				case when new.TOR_TEAM1 > new.TOR_TEAM2 Then '0'
			         when new.TOR_TEAM1 < new.TOR_TEAM2 Then '2'	
					 when new.TOR_TEAM1 = new.TOR_TEAM2 Then '1' END);

END;


