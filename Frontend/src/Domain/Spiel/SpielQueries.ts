import { AxiosError } from "axios";
import { useQuery, UseQueryResult } from "react-query";
import { AxiosSingletonInstance } from "../../Services/Axios/AxiosSingleton";
import { Spieler, Team } from "../Team/TeamTypes";
import { Spiel } from "./SpielTypes";

const api = AxiosSingletonInstance.getInstance();
export const spielerListe: Spieler[] = [
  {
    entityId: "1",
    nachname: "Köster",
    vorname: "Max",
    tore: 3,
    gelbeKarten: 1,
    roteKarten: 0,
  },
  {
    entityId: "2",
    nachname: "Rolf",
    vorname: "Michel",
    tore: 1,
    gelbeKarten: 5,
    roteKarten: 1,
  },
  {
    entityId: "3",
    nachname: "Köhler",
    vorname: "Kevin",
    tore: 10,
    gelbeKarten: 1,
    roteKarten: 2,
  },
  {
    entityId: "1",
    nachname: "Hövener",
    vorname: "Zoran",
    tore: 0,
    gelbeKarten: 1,
    roteKarten: 0,
  },
  {
    entityId: "1",
    nachname: "Meier",
    vorname: "Matze",
    tore: 9,
    gelbeKarten: 3,
    roteKarten: 1,
  },
];
export const team1: Team = {
  entityId: "1",
  name: "Deutschland",
  punkte: 10,
  spieler: spielerListe,
};
export const team2: Team = {
  entityId: "2",
  name: "Frankreich",
  punkte: 12,
  spieler: spielerListe,
};

export const useGetSpiele = (): UseQueryResult<Array<Spiel>, AxiosError> => {
  const getSpiele = async (): Promise<Array<Spiel>> => {
    // const response = await api.get("");
    // return response.data;
    return [
      {
        entityId: "1",
        teamEins: team1,
        teamZwei: team2,
        toreTeamEins: 3,
        toreTeamZwei: 6,
        runde: "1",
      },
    ];
  };

  return useQuery<Array<Spiel>, AxiosError>({
    queryKey: SpielQueryKeys.Spiele,
    queryFn: getSpiele,
  });
};

export const useGetSpiel = (
  entityId: string
): UseQueryResult<Spiel, AxiosError> => {
  const getSpiele = async ({ queryKey }: any): Promise<Spiel> => {
    const [, entityId]: [never, string] = queryKey;
    // const response = await api.get("" + entityId);
    // return response.data;
    return {
      entityId: "1",
      teamEins: team1,
      teamZwei: team2,
      toreTeamEins: 3,
      toreTeamZwei: 6,
      runde: "1",
    };
  };

  return useQuery<Spiel, AxiosError>({
    queryKey: [SpielQueryKeys.Spiel, entityId],
    queryFn: getSpiele,
  });
};

const SpielQueryKeys = {
  Spiele: "spiele",
  Spiel: "spiel",
};
