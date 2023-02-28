
import { Navigate } from "react-router-dom";
import { Col, Container, Row } from "react-bootstrap";
import ContentBox from "../Components/ContentBox";
import Dashboard from "../Components/Dashboard";

const LandingPage = () => {
    // if (!auth) return <Navigate to='/' />

    return (
        <Container className="bg-light rounded mb-3">
            <Row>
                <Col className="mt-2">
                    <h4>Willkommen auf BABAHANDBALL</h4>
                </Col>
            </Row>
            <ContentBox title="Übersicht">
                <Dashboard />
            </ContentBox>
        </Container>
    );
}

export default LandingPage;