import { useGetSpiele } from "./SpielQueries";
import DataTable, { TableColumn } from 'react-data-table-component';
import { Spiel } from "./SpielTypes";
import { Col, Container, Row } from "react-bootstrap";
import ContentBox from "../../Components/ContentBox";
import { Link } from "react-router-dom";
import { BsThreeDots } from "react-icons/bs";

const SpielListe: React.FC = () => {

    const { data, isLoading } = useGetSpiele();

    const columns: TableColumn<Spiel>[] = [
        {
            cell: (row) => {
                return (
                    <>
                        <Link to={"../Teams/" + row.teamEins.t_id}>{row.teamEins.name}</Link>
                    </>
                );
            },
            name: "Team 1", selector: (row) => row.teamEins.name,
        },
        {
            cell: (row) => {
                return (
                    <>
                        <Link to={"../Teams/" + row.teamZwei.t_id}>{row.teamZwei.name}</Link>
                    </>
                );
            },
            name: "Team 2", selector: (row) => row.teamZwei.name
        },
        { name: "Tore Team 1", selector: (row) => row.toreTeamEins },
        { name: "Tore Team 2", selector: (row) => row.toreTeamZwei },
        {
            cell: (row) => {
                return (
                    <Link to={"../Spiele/" + row.entityId}><BsThreeDots/></Link>
                );
            },
            name: "Details"
        }
    ];

    return (
        <>
            <Container className="bg-light rounded">
                <ContentBox title="Spiele">
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

export default SpielListe;