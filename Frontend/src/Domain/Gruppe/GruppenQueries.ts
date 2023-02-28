import { AxiosError } from "axios";
import { UseQueryResult, useQuery } from "react-query";
import { team1, team2 } from "../Spiel/SpielQueries";
import { Team } from "../Team/TeamTypes";
import { Gruppe, Gruppenteam } from "./GruppenTypes";

const groupTeam1: Gruppenteam = { ...team1, platz: 2, spiele: 2 };
const groupTeam2: Gruppenteam = { ...team2, platz: 1, spiele: 2 };

export const useGetGruppen = (): UseQueryResult<Array<Gruppe>, AxiosError> => {
  const getGruppen = async (): Promise<Array<Gruppe>> => {
    // const response = await api.get("");
    // return response.data;
    return [
      {
        name: "Gruppe 1",
        gruppenTeams: [groupTeam1, groupTeam2],
      },
      {
        name: "Gruppe 2",
        gruppenTeams: [groupTeam1, groupTeam2],
      },
      {
        name: "Gruppe 3",
        gruppenTeams: [groupTeam1, groupTeam2],
      },
      {
        name: "Gruppe 4",
        gruppenTeams: [groupTeam1, groupTeam2],
      },
    ];
  };

  return useQuery<Array<Gruppe>, AxiosError>({
    queryKey: GruppenQueryKeys.Gruppen,
    queryFn: getGruppen,
  });
};

const GruppenQueryKeys = {
  Gruppen: "gruppen",
};
