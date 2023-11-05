--many to many su ClientOrder
CREATE TABLE Product (
    productId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(255) NOT NULL,
    productPrice DECIMAL(10, 2)
);

INSERT INTO Product (productId, productName, productPrice) VALUES
(0, 'Smartphone', 499.99),
(0, 'Laptop', 899.99),
(0, 'Tablet', 299.99),
(0, 'Headphones', 79.99),
(0, 'Camera', 599.99),
(0, 'Smartwatch', 199.99),
(0, 'HDTV', 799.99),
(0, 'Gaming Console', 399.99),
(0, 'Wireless Router', 49.99),
(0, 'Bluetooth Speaker', 69.99),
(0, 'External Hard Drive', 129.99),
(0, 'Coffee Maker', 49.99),
(0, 'Blender', 39.99),
(0, 'Vacuum Cleaner', 149.99),
(0, 'Toaster Oven', 89.99),
(0, 'Running Shoes', 89.99),
(0, 'Dress Shirt', 59.99),
(0, 'Jeans', 69.99),
(0, 'Sneakers', 74.99),
(0, 'Winter Coat', 149.99),
(0, 'Handbag', 99.99),
(0, 'Wristwatch', 129.99),
(0, 'Sunglasses', 49.99),
(0, 'Backpack', 59.99),
(0, 'Earrings', 29.99),
(0, 'Necktie', 19.99),
(0, 'Dining Table', 399.99),
(0, 'Sofa', 699.99),
(0, 'Coffee Table', 149.99),
(0, 'Bookshelf', 129.99);