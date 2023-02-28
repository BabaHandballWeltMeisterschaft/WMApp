import { useState, useEffect } from "react";
import { Container, Card } from "react-bootstrap";
import { useParams } from "react-router-dom";
import { useGetSpieler } from "./SpielerQueries";

const TeamDetail: React.FC = () => {
    const { id } = useParams<{ id: string }>();

    const [spielerId, setSpielerId] = useState<string>("");

    useEffect(() => {
        if (id && !spielerId) {
            setSpielerId(id);
        }
    }, [id])

    const { data } = useGetSpieler(spielerId);

    return (
        <Container className="bg-light rounded">
            <Card className="mt-3 mb-3">
                <Card.Header as="h5" className="bg-success text-white">
                    {data?.vorname + " " + data?.nachname}
                </Card.Header>
                <Card.Body>

                </Card.Body>
            </Card>
        </Container>
    );
}

export default TeamDetail;