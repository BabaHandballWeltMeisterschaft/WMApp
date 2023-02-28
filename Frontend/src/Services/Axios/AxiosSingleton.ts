import axios, { AxiosInstance } from 'axios';
import { axiosRequestConfiguration } from "./Config";

class AxiosSingleton
{
    private static _instance: AxiosSingleton;
    private axiosInstance: AxiosInstance;

    private constructor()
    {
        this.axiosInstance = axios.create(axiosRequestConfiguration);
        this.axiosInstance.defaults.withCredentials = true;
    }

    public getInstance():AxiosInstance{
        return this.axiosInstance;
    }
    public static get Instance()
    {
        return this._instance || (this._instance = new this());
    }
}

export const AxiosSingletonInstance = AxiosSingleton.Instance;