import { AxiosRequestConfig } from 'axios';
const token:string|null=sessionStorage.getItem('bearer');
export const axiosRequestConfiguration: AxiosRequestConfig = {
    
    baseURL: 'http://localhost:48157/api/',
    responseType: 'json',
    headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer `+token
    }
};