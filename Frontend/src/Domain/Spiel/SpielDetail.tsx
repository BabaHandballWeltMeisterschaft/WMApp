import { useState, useEffect } from "react";
import { Container, Card } from "react-bootstrap";
import { useParams } from "react-router-dom";
import { useGetSpiel } from "./SpielQueries";

const SpielDetail: React.FC = () => {
    const { id } = useParams<{ id: string }>();
    const [spielId, setSpielId] = useState<string>("");

    useEffect(() => {
        if (id && !spielId) {
            setSpielId(id);
        }
    }, [id])

    const { data } = useGetSpiel(spielId);

    return (
        <Container className="bg-light rounded">
            <Card className="mt-3 mb-3">
                <Card.Header as="h5" className="bg-success text-white">
                    {data?.teamEins.name + " VS " + data?.teamZwei.name}
                </Card.Header>
                <Card.Body>
                    
                </Card.Body>
            </Card>
        </Container>
    );
}

export default SpielDetail;