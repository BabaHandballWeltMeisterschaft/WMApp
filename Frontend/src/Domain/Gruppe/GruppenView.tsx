import { Container, Card, Row, Col } from "react-bootstrap";
import { useGetGruppen } from "./GruppenQueries";
import { Gruppenteam } from "./GruppenTypes";
import DataTable, { TableColumn } from 'react-data-table-component';
import { Link } from "react-router-dom";

const GruppenView = () => {
    const { data } = useGetGruppen();

    const columns: TableColumn<Gruppenteam>[] = [
        { name: "Platz", selector: (row) => row.platz, id: 1 },
        {
            cell: (row) => {
                return (
                    <>
                        <Link to={"../Teams/" + row.entityId}>{row.name}</Link>
                    </>
                );
            },
            name: "Team", selector: (row) => row.name,
        },
        { name: "Spiele", selector: (row) => row.spiele },
        { name: "Punkte", selector: (row) => row.punkte },
    ];

    return (
        <Container className="bg-light rounded mb-3">
            <Row>
                {data?.map((gruppe) => (
                    <Col lg={6}>
                        <Card className="mt-3 mb-3">
                            <Card.Header as="h5" className="bg-success text-white">
                                {gruppe.name}
                            </Card.Header>
                            <Card.Body>
                                <DataTable defaultSortFieldId={1} defaultSortAsc={true} columns={columns} data={gruppe.gruppenTeams} />
                            </Card.Body>
                        </Card>
                    </Col>
                ))}
            </Row>
        </Container>
    );
}

export default GruppenView;