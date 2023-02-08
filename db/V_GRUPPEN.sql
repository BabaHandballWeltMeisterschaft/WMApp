DROP VIEW GRUPPE_A;
CREATE VIEW GRUPPE_A as
select 'A' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 1
order by PUNKTE desc;

DROP VIEW GRUPPE_B;
CREATE VIEW GRUPPE_B as
select 'B' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 2
order by PUNKTE desc;

DROP VIEW GRUPPE_C;
CREATE VIEW GRUPPE_C as
select 'C' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 3
order by PUNKTE desc;

DROP VIEW GRUPPE_D;
CREATE VIEW GRUPPE_D as
select 'D' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 4
order by PUNKTE desc;

DROP VIEW GRUPPE_E;
CREATE VIEW GRUPPE_E as
select 'E' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 5
order by PUNKTE desc;

DROP VIEW GRUPPE_F;
CREATE VIEW GRUPPE_F as
select 'F' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 6
order by PUNKTE desc;

DROP VIEW GRUPPE_G;
CREATE VIEW GRUPPE_G as
select 'G' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 7
order by PUNKTE desc;

DROP VIEW GRUPPE_H;
CREATE VIEW GRUPPE_H as
select 'H' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 8
order by PUNKTE desc;