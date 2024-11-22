create database productDb;
use productDb;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    ProductQuantity INT,
    ProductPrice DECIMAL(10, 2)
);

insert into Products values 
(1 , 'Laptop' , 52 , 55000),
(2 , 'Mobile' , 60, 30000),
(3 , 'TWS' , 40, 2000),
(4 , 'Powerbank' , 10 , 1500),
(5 , 'Charger' , 15 , 750);

ALTER TABLE products
ADD Expirydate DATE;
 
UPDATE products set Expirydate='2026-12-21' WHERE ProductId = 1;
UPDATE products set Expirydate='2028-10-12' WHERE ProductId = 2;
UPDATE products set Expirydate='2027-07-12' WHERE ProductId = 3;
UPDATE products set Expirydate='2030-07-12' WHERE ProductId = 4;
UPDATE products set Expirydate='2032-07-12' WHERE ProductId = 5;

Select * from Products;