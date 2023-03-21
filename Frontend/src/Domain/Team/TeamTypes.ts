export interface Team {
  t_id: number;
  vorGruppe: number;
  hauptRunde?: number;
  name: string;
  vorrundePunkte: number;
  hauptrundePunkte?: number;
}

export interface Spieler {
  entityId: string;
  vorname: string;
  nachname: string;
  tore: number;
  gelbeKarten: number;
  roteKarten: number;
}
