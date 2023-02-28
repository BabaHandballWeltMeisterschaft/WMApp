import { ReactNode } from "react";
import Footer from "./Footer";
import Header from "./Header";
import image from "../style/wm.jpg"

export interface Props {
    children: ReactNode;
}

export const Layout: React.FC<Props> = ({ children }: Props) => {
    return (
        <>
            <Header />
            <main className="d-flex flex-column flex-fill justify-content-center outermain mb-3" >
                {children}
            </main>
            <Footer />
        </>
    );
};