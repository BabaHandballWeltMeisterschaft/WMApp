export interface Team {
    entityId: string;
    name: string;
    punkte: number;
    spieler: Spieler[];

}

export interface Spieler{
    entityId: string;
    vorname: string;
    nachname: string;
    tore: number;
    gelbeKarten: number;
    roteKarten: number;
}

