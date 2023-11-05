CREATE TABLE Client (
    clientId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    clientName VARCHAR(255) NOT NULL,
    clientEmail VARCHAR(255) NOT NULL
);

INSERT INTO Client (clientId, clientName, clientEmail) VALUES
(0, 'Alice Johnson', 'alice@example.com'),
(0, 'Bob Smith', 'bob@example.com'),
(0, 'Eva Martinez', 'eva@example.com'),
(0, 'John Doe', 'john@example.com'),
(0, 'Sara Adams', 'sara@example.com'),
(0, 'Michael Brown', 'michael@example.com');