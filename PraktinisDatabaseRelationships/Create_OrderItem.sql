CREATE TABLE OrderItem (
    orderItemId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    orderId INT NOT NULL,
    productId INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (orderId) REFERENCES ClientOrder(clientOrderId),
    FOREIGN KEY (productId) REFERENCES Product(productId)
);

INSERT INTO OrderItem (orderId, productId, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(1, 6, 3),
(2, 2, 1),
(2, 5, 2),
(3, 7, 4),
(4, 4, 3),
(5, 9, 1),
(5, 12, 2),
(6, 11, 1),
(6, 13, 2),
(6, 17, 1),
(7, 20, 1),
(8, 19, 2),
(9, 23, 1),
(9, 26, 3),
(10, 29, 2),
(11, 14, 1),
(11, 18, 2),
(12, 25, 1),
(13, 30, 2),
(14, 10, 1),
(14, 15, 2),
(14, 21, 3),
(14, 24, 4),
(15, 8, 1),
(15, 16, 2),
(15, 22, 3),
(15, 27, 4),
(15, 28, 5);