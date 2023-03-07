/*DROP VIEW V_GRUPPE_I;
DROP VIEW V_GRUPPE_II;
DROP VIEW V_GRUPPE_III;
DROP VIEW V_GRUPPE_IV;*/


CREATE VIEW V_GRUPPE_I as
select 'I' as Hauptgruppe, NAME as Land, HAUPT_PUNKTE as Punkte from Team 
where HAUPT_GRUPPE = 1
order by HAUPT_PUNKTE desc;


CREATE VIEW V_GRUPPE_II as
select 'II' as Gruppe, NAME as Land, HAUPT_PUNKTE as Punkte from Team 
where HAUPT_GRUPPE = 2
order by HAUPT_PUNKTE desc;


CREATE VIEW V_GRUPPE_III as
select 'III' as Gruppe, NAME as Land, HAUPT_PUNKTE as Punkte from Team 
where HAUPT_GRUPPE = 3
order by HAUPT_PUNKTE desc;


CREATE VIEW V_GRUPPE_IV as
select 'IV' as Gruppe, NAME as Land, HAUPT_PUNKTE as Punkte from Team 
where HAUPT_GRUPPE = 4
order by HAUPT_PUNKTE desc;