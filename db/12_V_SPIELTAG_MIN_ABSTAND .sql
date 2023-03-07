/*drop VIEW V_SPIELTAG_MIN_ABSTAND;*/

CREATE VIEW V_SPIELTAG_MIN_ABSTAND AS
SELECT DATUM, "Team 1", "Team 2", "Tor 1" ||":"|| "Tor 2" as "Ergebnis",MIN(ABS("Tor 1" - "Tor 2")) AS "Diff", "Runde", "Schiedsrichter", "Stadion Bezeichnung"
FROM V_SPIELTAG
group by "RUNDE"
order by Datum
