-- 1. BEFORE/AFTER TRIGGER 
create database dbSQL;
use dbSQL;
 
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    ProductQuantity INT,
    ProductPrice DECIMAL(10, 2)
);
 
INSERT INTO Products (ProductID, ProductName, ProductQuantity, ProductPrice) 
VALUES (11, 'Cookies', 2, 2.00);
 
CREATE TABLE log_values(
proName VARCHAR(100),
Quantity int,
price decimal(10,2)
);
-- After trigger
 
DELIMITER $$
CREATE TRIGGER insert_trigr_after
AFTER INSERT ON Products
FOR EACH ROW
BEGIN
    INSERT INTO log_values (proName,Quantity ,price )
    VALUES (new.ProductName, new.ProductQuantity, new.ProductPrice);
END $$
DELIMITER ;
 
 INSERT INTO Products (ProductID, ProductName, ProductQuantity, ProductPrice) 
VALUES (12, 'Rice', 8, 250.00);

INSERT INTO Products (ProductID, ProductName, ProductQuantity, ProductPrice) values
(23,'household products', 40, 650.00);

select * from Products;
select* from log_values;


 
-- BEFORE TRIGGER
 
 CREATE TABLE Products_before (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    ProductQuantity INT,
    ProductPrice DECIMAL(10, 2)
);

INSERT INTO Products_before (ProductID, ProductName, ProductQuantity, ProductPrice) 
VALUES (18, 'charger', 5, 280.00);

DELIMITER $$
CREATE TRIGGER insert_trigr_before
BEFORE INSERT ON Products_before
FOR EACH ROW
BEGIN
    INSERT INTO log_values (proName,
Quantity ,
price )
    VALUES (new.ProductName, new.ProductQuantity, new.ProductPrice);
END $$
DELIMITER ;
 
 SELECT COUNT(*) FROM log_values;
 
INSERT INTO Products_before (ProductID, ProductName, ProductQuantity, ProductPrice) 
VALUES (15, 'Mobile', 15, 20000.00);
 
select * from log_values ;
select * from  Products_before;

