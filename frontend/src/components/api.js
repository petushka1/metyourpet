import axios from 'axios';

const api = axios.create({
  baseURL: 'http://localhost:3000', // Set the base URL to the backend Rails server
});

export default api;
