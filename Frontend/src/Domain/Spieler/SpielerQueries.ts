import { AxiosError } from "axios";
import { UseQueryResult, useQuery } from "react-query";
import { spielerListe, team1 } from "../Spiel/SpielQueries";
import { Spieler } from "../Team/TeamTypes";

export const useGetSpieler = (
  id: string
): UseQueryResult<Spieler, AxiosError> => {
  const getSpieler = async ({ queryKey }: any): Promise<Spieler> => {
    const [, id] = queryKey;
    // const response = await api.get("");
    // return response.data;
    return spielerListe.filter((x) => x.entityId === id)[0];
  };

  return useQuery<Spieler, AxiosError>({
    queryKey: ["spieler", id],
    queryFn: getSpieler,
    enabled: id !== "",
  });
};
