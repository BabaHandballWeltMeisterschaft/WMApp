import { AxiosRequestConfig } from "axios";
export const axiosRequestConfiguration: AxiosRequestConfig = {
  baseURL: "http://localhost:8080/",
  responseType: "json",
  headers: {
    "Content-Type": "application/json",
  },
};
