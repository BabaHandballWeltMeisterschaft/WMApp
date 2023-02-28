DROP VIEW V_GRUPPE_A;
CREATE VIEW V_GRUPPE_A as
select 'A' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 1
order by PUNKTE desc;

DROP VIEW V_GRUPPE_B;
CREATE VIEW V_GRUPPE_B as
select 'B' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 2
order by PUNKTE desc;

DROP VIEW V_GRUPPE_C;
CREATE VIEW V_GRUPPE_C as
select 'C' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 3
order by PUNKTE desc;

DROP VIEW V_GRUPPE_D;
CREATE VIEW V_GRUPPE_D as
select 'D' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 4
order by PUNKTE desc;

DROP VIEW V_GRUPPE_E;
CREATE VIEW V_GRUPPE_E as
select 'E' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 5
order by PUNKTE desc;

DROP VIEW V_GRUPPE_F;
CREATE VIEW V_GRUPPE_F as
select 'F' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 6
order by PUNKTE desc;

DROP VIEW V_GRUPPE_G;
CREATE VIEW V_GRUPPE_G as
select 'G' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 7
order by PUNKTE desc;

DROP VIEW V_GRUPPE_H;
CREATE VIEW V_GRUPPE_H as
select 'H' as Gruppe, NAME as Land, PUNKTE as Punkte from Team 
where GRUPPE = 8
order by PUNKTE desc;