import { Team } from "../Team/TeamTypes";

export interface Gruppe{
    name: string;
    gruppenTeams: Gruppenteam[];
}

export interface Gruppenteam extends Team{
    platz: number;
    spiele: number;
}