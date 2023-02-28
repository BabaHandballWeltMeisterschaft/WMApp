import { useEffect, useState } from "react";
import { Card, Button, Container, Col } from "react-bootstrap";
import { Link, useParams } from "react-router-dom";
import { useGetTeam } from "./TeamQueries";
import DataTable, { TableColumn } from 'react-data-table-component';
import { Spieler, Team } from "./TeamTypes";

const TeamDetail: React.FC = () => {
    const { id } = useParams<{ id: string }>();

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
            cell: (row) => {
                return (
                    <>
                        <Link to={"../Spieler/" + row.entityId}>{row.vorname + " " + row.nachname}</Link>
                    </>
                );
            },
            name: "Name", selector: (row) => row.nachname,
        },
    ];

    return (
        <Container className="bg-light rounded">
            <Card className="mt-3 mb-3">
                <Card.Header as="h5" className="bg-success text-white">
                    {data?.name}
                </Card.Header>
                <Card.Body>
                    <Col lg={6}>
                    <Card >
                        <Card.Header as="h5" className="bg-success text-white">
                            Spieler
                        </Card.Header>
                        <Card.Body>
                            {data && <DataTable columns={columns} data={data?.spieler} />}
                        </Card.Body>
                    </Card>
                    </Col>
                </Card.Body>
            </Card>
        </Container>
    );
}

export default TeamDetail;