--many to many su Product
CREATE TABLE ClientOrder (
    clientOrderId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    clientOrderClientId INT NOT NULL,
    clientOrderCode VARCHAR(255) NOT NULL,
    FOREIGN KEY (clientOrderClientId) REFERENCES Client(ClientId) --one to many su Client
);

INSERT INTO ClientOrder (clientOrderId, clientOrderClientId, clientOrderCode) VALUES
(0, 1, 'A1B2C3D4'),
(0, 2, 'E5F6G7H8'),
(0, 3, 'I9J0K1L2'),
(0, 4, 'M3N4O5P6'),
(0, 5, 'Q7R8S9T0'),
(0, 6, 'U1V2W3X4'),
(0, 1, 'Y5Z6A7B8'),
(0, 2, 'C9D0E1F2'),
(0, 3, 'G3H4I5J6'),
(0, 4, 'K7L8M9N0'),
(0, 5, 'O1P2Q3R4'),
(0, 6, 'S5T6U7V8'),
(0, 1, 'W9X0Y1Z2'),
(0, 2, 'A3B4C5D6'),
(0, 3, 'E7F8G9H0');