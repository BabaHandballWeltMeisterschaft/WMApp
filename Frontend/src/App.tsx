import React from 'react';
import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import LandingPage from './Domain/LandingPage';
import { Layout } from './Components/Layout';
import {
  BrowserRouter as Router,
  Routes,
  Route
} from "react-router-dom";
import SpielListe from './Domain/Spiel/SpielListe';
import { QueryClient, QueryClientProvider } from 'react-query';
import SpielDetail from './Domain/Spiel/SpielDetail';
import TeamListe from './Domain/Team/TeamListe';
import TeamDetail from './Domain/Team/TeamDetail';
import GruppenView from './Domain/Gruppe/GruppenView';

function App() {
  const queryClient = new QueryClient();
  return (
    <Router>
      <Layout>
        <QueryClientProvider client={queryClient}>
          <Routes>
            <Route index element={<LandingPage />} />
            <Route path='/Spiele' element={<SpielListe />} />
            <Route path='/Spiele/:id' element={<SpielDetail />} />
            <Route path='/Teams' element={<TeamListe />} />
            <Route path='/Teams/:id' element={<TeamDetail />} />
            <Route path='/Gruppen' element={<GruppenView />} />
          </Routes>
        </QueryClientProvider>
      </Layout>
    </Router>
  );
}

export default App;
