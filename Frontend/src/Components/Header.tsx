import { Container, Nav, Navbar } from "react-bootstrap";
import { LinkContainer } from 'react-router-bootstrap'
import { SelectCallback } from '@restart/ui/types';
import { useNavigate } from "react-router-dom";

const Header: React.FC = () => {
    const navigate = useNavigate();

    const handleNavSelect: SelectCallback = (key) => {
        if (key)
        navigate(key);
    }
    return (
        <header className="gradient">
            <Navbar onSelect={handleNavSelect} expand={false} className="justify-content-right" bg="gradient" variant="dark">
                <Container>
                    <Navbar.Brand className="ml-2 mr-auto pr-2">
                        <Nav.Link eventKey={"../"}>
                        <strong>Handball</strong>Weltmeisterschaft 2023
                        </Nav.Link>
                    </Navbar.Brand>
                    <Nav.Item>
                        <Nav.Link className="text-white" eventKey={"../Spiele"}>
                            Spiele
                        </Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                        <Nav.Link className="text-white" eventKey={"../Teams"}>
                            Teams
                        </Nav.Link>
                    </Nav.Item>
                    <Nav.Item>
                        <Nav.Link className="text-white" eventKey={"../Gruppen"}>
                            Gruppen
                        </Nav.Link>
                    </Nav.Item>
                </Container>
            </Navbar>
        </header>
    );
};

export default Header;