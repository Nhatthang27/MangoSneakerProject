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
  [Password]  varchar(50) NOT NULL, 
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
  Price       float(10) NOT NULL, 
  [Image]       varchar(50) NOT NULL, 
  Discount    float(5) NOT NULL, 
  PRIMARY KEY (ID));
CREATE TABLE ProductSize (
  ProductID  int NOT NULL, 
  SizeNumber int NOT NULL, 
  Quantity   int NOT NULL, 
  PRIMARY KEY (ProductID, 
  SizeNumber));
CREATE TABLE [Size] (
  SizeNumber int NOT NULL, 
  PRIMARY KEY (SizeNumber));

ALTER TABLE Product ADD CONSTRAINT FK_Category_Product_CategoryID FOREIGN KEY (CategoryID) REFERENCES Category (ID);
ALTER TABLE CartDetail ADD CONSTRAINT FK_Customer_CartDetail_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE [Order] ADD CONSTRAINT FK_Customer_Order_CustomerID FOREIGN KEY (CustomerID) REFERENCES Customer (ID);
ALTER TABLE OrderDetail ADD CONSTRAINT FK_Order_OrderDetail_OrderID FOREIGN KEY (OrderID) REFERENCES [Order] (ID);
ALTER TABLE CartDetail ADD CONSTRAINT FK_Product_CartDetail_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ID);
ALTER TABLE OrderDetail ADD CONSTRAINT FK_Product_OrderDetail_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ID);
ALTER TABLE ProductSize ADD CONSTRAINT FK_Product_ProductSize_ProductID FOREIGN KEY (ProductID) REFERENCES Product (ID);
ALTER TABLE ProductSize ADD CONSTRAINT FK_Size_ProductSize_SizeNumber FOREIGN KEY (SizeNumber) REFERENCES [Size] (SizeNumber);

ALTER TABLE CartDetail
ADD CONSTRAINT CK_CartDetail_Quantity_Positive CHECK (Quantity > 0)

ALTER TABLE OrderDetail
ADD CONSTRAINT CK_OrderDetail_Quantity_Positive CHECK (Quantity > 0)

ALTER TABLE OrderDetail
ADD CONSTRAINT CK_OrderDetail_UnitPrice_Positive CHECK (UnitPrice > 0)

ALTER TABLE Product
ADD CONSTRAINT CK_Product_Price_Positive CHECK (Price > 0)

ALTER TABLE Product
ADD CONSTRAINT CK_Product_Discount_NonNegative CHECK (Discount >= 0)

ALTER TABLE ProductSize
ADD CONSTRAINT CK_ProductSize_Quantity_Positive CHECK (Quantity > 0)

ALTER TABLE Customer 
ADD isDeleted BIT DEFAULT 0;

ALTER TABLE Customer
ADD CONSTRAINT DF_Customer_isDeleted DEFAULT 0 FOR isDeleted;

ALTER TABLE Customer
ALTER COLUMN isDeleted BIT NOT NULL;

GO
CREATE TRIGGER trg_After_Customer_isDeleted_Change
ON Customer
AFTER UPDATE
AS
BEGIN
	DELETE FROM CartDetail
	WHERE CustomerID IN (SELECT ID FROM inserted WHERE isDeleted = 1)
END;
GO

ALTER TABLE Customer
ADD CONSTRAINT UQ_Customer_Mail UNIQUE (Mail);

ALTER TABLE Customer
ADD CONSTRAINT UQ_Customer_Username UNIQUE (Username);

ALTER TABLE Customer
ADD CONSTRAINT UQ_Customer_Phone UNIQUE (Phone);

