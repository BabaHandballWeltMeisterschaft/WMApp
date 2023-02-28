import React from "react";
import { Col, Row } from "react-bootstrap";
import classNames from "classnames";

export interface ContentBoxProps extends React.HTMLAttributes<HTMLElement> {
  title: string;
  children: React.ReactNode;
}

const ContentBox: React.FC<ContentBoxProps> = ({ title, children, className, ...props }: ContentBoxProps) => {
  return (
    <div className={classNames(className, "my-3", "p-3", "bg-white", "border-top", "border-secondary")} {...props}>
      <Row>
        <Col>
          <h4 className="mt-4">{title}</h4>
        </Col>
      </Row>
      {children}
    </div>
  );
};

export default ContentBox;
