CREATE DATABASE MangoSneakerDB
USE MangoSneakerDB

CREATE TABLE CartDetails (
  CustomerID int NOT NULL, 
  ProductID  int NOT NULL, 
  Quantity   int NOT NULL, 
  PRIMARY KEY (CustomerID, 
  ProductID));
CREATE TABLE Category (
  ID           int IDENTITY NOT NULL, 
  nameCategory varchar(60) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Customer (
  ID        int IDENTITY NOT NULL, 
  FirstName varchar(60) NOT NULL, 
  LastName  varchar(60) NOT NULL, 
  Mail      varchar(30) NULL, 
  Username  varchar(20) NOT NULL, 
  Password  varchar(20) NOT NULL, 
  Phone     varchar(10) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE OrderDetails (
  OrderID   int NOT NULL, 
  ProductID int NOT NULL, 
  Quantity  int NOT NULL, 
  UnitPrice float(10) NOT NULL, 
  PRIMARY KEY (OrderID, 
  ProductID));
CREATE TABLE Orders (
  ID         int IDENTITY NOT NULL, 
  CustomerID int NOT NULL, 
  [Date]     varchar(20) NOT NULL, 
  OrdersID   int NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE Product (
  ID          int IDENTITY NOT NULL, 
  Category    int NOT NULL, 
  NameProduct varchar(60) NOT NULL, 
  Quantity    int NOT NULL, 
  Price       float(10) NOT NULL, 
  Image       varchar(100) NOT NULL, 
  Discount    float(5) NULL, 
  PRIMARY KEY (ID));
ALTER TABLE Product ADD CONSTRAINT FK_Category_Product FOREIGN KEY (Category) REFERENCES Category (ID);
ALTER TABLE CartDetails ADD CONSTRAINT FK_Customer_CarDetails FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE Orders ADD CONSTRAINT FK_Customer_Orders FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_Orders_OrderDetails FOREIGN KEY (OrderID) REFERENCES Orders (ID);
ALTER TABLE CartDetails ADD CONSTRAINT FK_Product_CartDetails FOREIGN KEY (ProductID) REFERENCES Product (ID);
ALTER TABLE OrderDetails ADD CONSTRAINT FK_Product_OrderDetails FOREIGN KEY (ProductID) REFERENCES Product (ID);



--DROP DATABASE MangoSneakerDB

