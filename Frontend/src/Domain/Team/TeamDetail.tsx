import { useEffect, useState } from "react";
import { Card, Button, Container, Col, Row } from "react-bootstrap";
import { Link, useParams } from "react-router-dom";
import { useGetTeam } from "./TeamQueries";
import DataTable, { TableColumn } from 'react-data-table-component';
import { Spieler, Team } from "./TeamTypes";
import { RadialChart } from "react-vis"
import { useGetSpiele } from "../Spiel/SpielQueries";

const TeamDetail: React.FC = () => {
    const { id } = useParams<{ id: string }>();
    const { data: spieldata } = useGetSpiele();
    const [teamId, setTeamId] = useState<string>("");

    useEffect(() => {
        if (id && !teamId) {
            setTeamId(id);
        }
    }, [id])

    const { data } = useGetTeam(teamId);

    console.log(data?.spieler[0].vorname);

    const columns: TableColumn<Spieler>[] = [
        {
            name: "Name", selector: (row) => row.vorname + " " + row.nachname,
        },
        {
            name: "Tore", selector: (row) => row.tore,
        },
        {
            name: "Gelbe Karten", selector: (row) => row.gelbeKarten,
        },
        {
            name: "Rote Karten", selector: (row) => row.roteKarten,
        },
    ];

    return (
        <Container className="bg-light rounded">
            <Card className="mt-3 mb-5">
                <Card.Header as="h5" className="bg-success text-white">
                    {data?.name}
                </Card.Header>
                <Card.Body>
                    <Row>
                        <Col lg={6}>
                            <Card className="mt-3">
                                <Card.Header as="h5" className="bg-primary text-white">
                                    Spieler
                                </Card.Header>
                                <Card.Body>
                                    {data && <DataTable columns={columns} data={data?.spieler} />}
                                </Card.Body>
                            </Card>
                        </Col>
                        <Col lg={6}>
                            <Card className="mt-3">
                                <Card.Header as="h5" className="bg-primary text-white">
                                    Statistik
                                </Card.Header>
                                <Card.Body>

                                </Card.Body>
                            </Card>
                        </Col>
                    </Row>
                </Card.Body>
            </Card>
        </Container>
    );
}

export default TeamDetail;