import { Container, Row, Col } from "react-bootstrap";
import { BsThreeDots } from "react-icons/bs";
import { Link } from "react-router-dom";
import ContentBox from "../../Components/ContentBox";
import DataTable, { TableColumn } from 'react-data-table-component';
import { Team } from "./TeamTypes";
import { useGetTeams } from "./TeamQueries";

const TeamListe: React.FC = () => {
    const { data, isLoading } = useGetTeams();

    const columns: TableColumn<Team>[] = [
        {
            name: "Team", selector: (row) => row.name,
        },
        {
            name: "Punkte", selector: (row) => row.punkte,
        },
        {
            cell: (row) => {
                return (
                    <Link to={"../Teams/" + row.entityId}><BsThreeDots /></Link>
                );
            },
            name: "Details"
        }
    ];

    return (
        <>
            <Container className="bg-light rounded">
                <ContentBox title="Teams">
                    {data ?
                        <DataTable columns={columns} data={data} />
                        : <Row>
                            <Col>
                                Fehler
                            </Col>
                        </Row>}
                </ContentBox>
            </Container>
        </>
    );
}

export default TeamListe;