import { AxiosError } from "axios";
import { UseQueryResult, useQuery } from "react-query";
import { AxiosSingletonInstance } from "../../Services/Axios/AxiosSingleton";
import { team1, team2 } from "../Spiel/SpielQueries";
import { Team } from "./TeamTypes";

const api = AxiosSingletonInstance.getInstance();

export const useGetTeams = (): UseQueryResult<Array<Team>, AxiosError> => {
  const getTeams = async (): Promise<Array<Team>> => {
    const response = await api.get("teams");
    return response.data;

    // return [
    //   team1,
    //   team2,
    // ];
  };

  return useQuery<Array<Team>, AxiosError>({
    queryKey: TeamQueryKeys.Teams,
    queryFn: getTeams,
  });
};

export const useGetTeam = (id: string): UseQueryResult<Team, AxiosError> => {
  const getTeam = async ({ queryKey }: any): Promise<Team> => {
    const [, id] = queryKey;
    // const response = await api.get("");
    // return response.data;
    return team1;
  };

  return useQuery<Team, AxiosError>({
    queryKey: [TeamQueryKeys.Team, id],
    queryFn: getTeam,
    enabled: id !== "",
  });
};

const TeamQueryKeys = {
  Teams: "teams",
  Team: "team",
};
