DROP VIEW V_GRUPPE_A;
DROP VIEW V_GRUPPE_B;
DROP VIEW V_GRUPPE_C;
DROP VIEW V_GRUPPE_D;
DROP VIEW V_GRUPPE_E;
DROP VIEW V_GRUPPE_F;
DROP VIEW V_GRUPPE_G;
DROP VIEW V_GRUPPE_H;

CREATE VIEW V_GRUPPE_A as
select 'A' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 1
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_B as
select 'B' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 2
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_C as
select 'C' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 3
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_D as
select 'D' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 4
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_E as
select 'E' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 5
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_F as
select 'F' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 6
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_G as
select 'G' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 7
order by VORRUNDEN_PUNKTE desc;


CREATE VIEW V_GRUPPE_H as
select 'H' as Gruppe, NAME as Land, VORRUNDEN_PUNKTE as Punkte from Team 
where VOR_GRUPPE = 8
order by VORRUNDEN_PUNKTE desc;