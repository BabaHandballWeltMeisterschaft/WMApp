import { Team } from "../Team/TeamTypes";

export interface Spiel {
  entityId: string;
  teamEins: Team;
  teamZwei: Team;
  toreTeamEins: number;
  toreTeamZwei: number;
  runde: string;
}
