USE MangoSneakerDB;

INSERT INTO Category (nameCategory) VALUES ('Nike');
INSERT INTO Category (nameCategory) VALUES ('Adidas');
INSERT INTO Category (nameCategory) VALUES ('Converse');

INSERT INTO Customer (FirstName, LastName, Mail, Username, Password, Phone) VALUES
('John', 'Doe', 'john@example.com', 'johndoe', 'password1', '0123456789'),
('Jane', 'Smith', 'jane@example.com', 'janesmith', 'password2', '0123456789'),
('Alice', 'Johnson', 'alice@example.com', 'alicejohnson', 'password3', '0123456789'),
('Bob', 'Brown', 'bob@example.com', 'bobbrown', 'password4', '0123456789'),
('Charlie', 'Davis', 'charlie@example.com', 'charliedavis', 'password5', '0123456789'),
('David', 'Evans', 'david@example.com', 'davidevans', 'password6', '0123456789'),
('Eve', 'Wilson', 'eve@example.com', 'evewilson', 'password7', '0123456789'),
('Frank', 'Miller', 'frank@example.com', 'frankmiller', 'password8', '0123456789'),
('Grace', 'Moore', 'grace@example.com', 'gracemoore', 'password9', '0123456789'),
('Hank', 'Taylor', 'hank@example.com', 'hanktaylor', 'password10', '0123456789'),
('Ivy', 'Anderson', 'ivy@example.com', 'ivyanderson', 'password11', '0123456789'),
('Jack', 'Thomas', 'jack@example.com', 'jackthomas', 'password12', '0123456789'),
('Kathy', 'Jackson', 'kathy@example.com', 'kathyjackson', 'password13', '0123456789'),
('Leo', 'White', 'leo@example.com', 'leowhite', 'password14', '0123456789'),
('Mona', 'Martin', 'mona@example.com', 'monamartin', 'password15', '0123456789');

INSERT INTO Product (Category, NameProduct, Quantity, Price, Image, Discount) VALUES
(1, 'Nike Air Max', 100, 150.00, 'nike_air_max.jpg', 10.0),
(1, 'Nike Revolution', 200, 120.00, 'nike_revolution.jpg', 5.0),
(2, 'Adidas Ultraboost', 150, 180.00, 'adidas_ultraboost.jpg', 15.0),
(2, 'Adidas Superstar', 300, 110.00, 'adidas_superstar.jpg', 8.0),
(3, 'Converse Chuck Taylor', 250, 70.00, 'converse_chuck_taylor.jpg', 12.0),
(3, 'Converse All Star', 100, 75.00, 'converse_all_star.jpg', 10.0),
(1, 'Nike Pegasus', 120, 130.00, 'nike_pegasus.jpg', 7.0),
(1, 'Nike Cortez', 80, 90.00, 'nike_cortez.jpg', 10.0),
(2, 'Adidas NMD', 90, 140.00, 'adidas_nmd.jpg', 5.0),
(2, 'Adidas Stan Smith', 130, 95.00, 'adidas_stan_smith.jpg', 12.0),
(3, 'Converse One Star', 70, 85.00, 'converse_one_star.jpg', 8.0),
(3, 'Converse Pro Leather', 60, 100.00, 'converse_pro_leather.jpg', 10.0),
(1, 'Nike Vapormax', 110, 200.00, 'nike_vapormax.jpg', 15.0),
(2, 'Adidas Gazelle', 140, 85.00, 'adidas_gazelle.jpg', 10.0),
(3, 'Converse Jack Purcell', 90, 95.00, 'converse_jack_purcell.jpg', 5.0);

INSERT INTO Orders (CustomerID, [Date], OrdersID) VALUES
(1, '2024-05-01', 1),
(2, '2024-05-02', 2),
(3, '2024-05-03', 3),
(4, '2024-05-04', 4),
(5, '2024-05-05', 5),
(6, '2024-05-06', 6),
(7, '2024-05-07', 7),
(8, '2024-05-08', 8),
(9, '2024-05-09', 9),
(10, '2024-05-10', 10),
(11, '2024-05-11', 11),
(12, '2024-05-12', 12),
(13, '2024-05-13', 13),
(14, '2024-05-14', 14),
(15, '2024-05-15', 15);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 2, 150.00),
(2, 3, 1, 180.00),
(3, 5, 3, 70.00),
(4, 7, 1, 130.00),
(5, 9, 2, 140.00),
(6, 11, 1, 85.00),
(7, 13, 2, 200.00),
(8, 2, 1, 120.00),
(9, 4, 3, 110.00),
(10, 6, 2, 75.00),
(11, 8, 1, 90.00),
(12, 10, 2, 95.00),
(13, 12, 1, 100.00),
(14, 14, 1, 85.00),
(15, 15, 2, 95.00);

INSERT INTO CartDetails (CustomerID, ProductID, Quantity) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 5, 3),
(4, 7, 1),
(5, 9, 2),
(6, 11, 1),
(7, 13, 2),
(8, 2, 1),
(9, 4, 3),
(10, 6, 2),
(11, 8, 1),
(12, 10, 2),
(13, 12, 1),
(14, 14, 1),
(15, 15, 2);

SELECT * FROM Category
SELECT * FROM Customer
SELECT * FROM Orders
SELECT * FROM Product
SELECT * FROM CartDetails
SELECT * FROM OrderDetails