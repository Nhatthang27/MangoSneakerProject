CREATE DATABASE MangoSneakerDB
USE MangoSneakerDB

CREATE TABLE CartDetail (
  CustomerID int NOT NULL, 
  ProductID  int NOT NULL, 
  Quantity   int NOT NULL, 
  PRIMARY KEY (CustomerID, 
  ProductID));
CREATE TABLE Category (
  ID           int IDENTITY NOT NULL, 
  CategoryName varchar(50) NOT NULL UNIQUE, 
  PRIMARY KEY (ID));
CREATE TABLE Customer (
  ID        int IDENTITY NOT NULL, 
  FirstName varchar(50) NOT NULL, 
  LastName  varchar(50) NOT NULL, 
  Mail      varchar(50) NOT NULL UNIQUE, 
  Username  varchar(50) NOT NULL UNIQUE, 
  Password  varchar(50) NOT NULL, 
  Phone     varchar(10) NOT NULL UNIQUE, 
  PRIMARY KEY (ID));
CREATE TABLE [Order] (
  ID         int IDENTITY NOT NULL, 
  CustomerID int NOT NULL, 
  [Date]     varchar(10) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE OrderDetail (
  OrderID   int NOT NULL, 
  ProductID int NOT NULL, 
  Quantity  int NOT NULL, 
  UnitPrice float(10) NOT NULL, 
  PRIMARY KEY (OrderID, 
  ProductID));
CREATE TABLE Product (
  ID          int IDENTITY NOT NULL, 
  CategoryID  int NOT NULL, 
  ProductName varchar(50) NOT NULL UNIQUE, 
  Quantity    int NOT NULL, 
  Price       float(10) NOT NULL, 
  Image       varchar(50) NOT NULL, 
  Discount    float(5) NOT NULL, 
  PRIMARY KEY (ID));
ALTER TABLE Product ADD CONSTRAINT FK_Category_Product_CategoryID FOREIGN KEY (CategoryID) REFERENCES Category (ID);
ALTER TABLE CartDetail ADD CONSTRAINT FK_Customer_CartDetail_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE [Order] ADD CONSTRAINT FK_Customer_Order_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE OrderDetail ADD CONSTRAINT FK_Order_OrderDetail_OrderID FOREIGN KEY (OrderID) REFERENCES [Order] (ID);
ALTER TABLE CartDetail ADD CONSTRAINT FK_Product_CartDetail_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ID);
ALTER TABLE OrderDetail ADD CONSTRAINT FK_Product_OrderDetail_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ID);






DROP DATABASE MangoSneakerDB

