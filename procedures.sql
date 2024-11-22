use db;


create table Products(
product_id int primary key,
product_name varchar(60),
product_price int,
product_quantity int

);

insert into Products values(001, 'Samsung', 16500, 10),(002, 'Nokia', 17500, 15),
(003,'poco',18500,25),(004,'Motorola',23000,35),(005,'Redmi',19500,40),(006,'Iqoo',28000,20),(007,'oppo',40000,15);


use db;
select* from Products;

DELIMITER $$
CREATE PROCEDURE DisplayModel (IN brand varchar(50))
BEGIN 
   select product_id,product_name,product_price,product_quantity from Products
   where product_name=brand;
end; && 
DELIMITER

call DisplayModel('samsung');

DELIMITER $$
CREATE PROCEDURE Insert_Products(IN id int, IN pro_name varchar(50), IN price int, IN qty int)
BEGIN
   INSERT INTO Products values (id, pro_name, price, qty);
END $$ 
DELIMITER ; 

call InsertProduct(008,'Techno',8900,15);

select * from Products;

create database fun; 
use fun;
DELIMITER &&
Create function FilterProducts (Para_Price IN int)
RETURN varchar(50);
as ProductName varchar(50)
begin
  select product_name into ProductName from Products
  where product_price> Para_Price;
  return (ProductName);
end $$
delimiter ;

call FilterProducts(20000);



  