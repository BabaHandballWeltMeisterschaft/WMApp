import React from "react";
import { Link, useNavigate } from "react-router-dom";

import { UseQueryResult } from "react-query";
import { AxiosError } from "axios";
import { BsFillPlusSquareFill } from "react-icons/bs";
import { Card, Button, Badge, Spinner } from "react-bootstrap";
import { useGetSpiele } from "../Domain/Spiel/SpielQueries";



const Dashboard: React.FC = () => {
  // hooks
  const navigate = useNavigate();
  // states
  // parameter
  // queries und mutationen
  const { data: spieleData } = useGetSpiele();
  // effekte
  // daten
  // handler
  const handleClick = (path: string) => {
    navigate(path);
  }

  return (
    <>
      <Card>
        <Card.Header as="h5" className="bg-success text-white">
          Spiele
        </Card.Header>
        <Card.Body>
          <Card.Text>
            {spieleData?.length === 1 ? spieleData.length + " Spiel" : spieleData?.length + " Spiele"}
          </Card.Text>
          <Button onClick={() => handleClick("/Spiele")} size="sm" className="m-1" variant="secondary">
            Anzeigen
          </Button>
        </Card.Body>
      </Card>
      <Card className="mt-3">
        <Card.Header as="h5" className="bg-success text-white">
          Manschaften
        </Card.Header>
        <Card.Body>
          <Button onClick={() => handleClick("/Teams")} size="sm" className="m-1" variant="secondary">
            Anzeigen
          </Button>
        </Card.Body>
      </Card>
    </>
  );
};

export default Dashboard;
