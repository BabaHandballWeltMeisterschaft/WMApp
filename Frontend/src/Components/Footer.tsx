import { Container } from "react-bootstrap";

const Footer: React.FC = () => {
    return (
        <footer className="footer bg-dark small text-secondary fixed-bottom">
            <Container className="d-flex justify-content-between align-items-center h-100">
                <div>© 2023 Copyright: BABAHANDBALLWM</div>
                <div>Version {process.env.REACT_APP_VERSION}</div>
            </Container>
        </footer>
    );
};

export default Footer;