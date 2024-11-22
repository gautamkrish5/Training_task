-- ------------------------ Employee ---------------------------------------------------------------
create database Employee;
use Employee;

CREATE TABLE Employees(
   Emp_id int ,
   Emp_name varchar (50),
   Location varchar (50),
   Department varchar (50),
   Salary decimal (10 , 2)
   );
   insert into Employees values (1,'Abishek','chennai','ERP',25000.00),
   (2,'Sangeeth','Bangalore','TL Team', 20000.00), 
   (3,'Sridhar','coimbatore','Embedded', 35000.00), 
   (4,'Gautam','chennai','Testing', 28000.00), 
   (5,'Arul selvan','chennai','Network', 30000.00), 
   (6,'sethu','chennai','DM',80000.00);
   
Select * from Employees;

create view view_employees as Select Emp_id,Emp_name,Department,Location from Employees
WHERE Department='Testing' AND Location= 'chennai' ;

SELECT * FROM view_employees; 
    
ALTER TABLE Employees
ADD JoiningDate DATE;

set Sql_safe_updates=0;
UPDATE Employees set JoiningDate='2020-12-21' WHERE Emp_id = 1;
UPDATE Employees set JoiningDate='2021-08-12' WHERE Emp_id = 2;
UPDATE Employees set JoiningDate='2019-07-12' WHERE Emp_id = 3;
UPDATE Employees set JoiningDate='2018-05-10' WHERE Emp_id = 4;
UPDATE Employees set JoiningDate='2017-04-09' WHERE Emp_id = 5;
UPDATE Employees set JoiningDate='2021-07-01' WHERE Emp_id = 6;    

create view JoiningDate as
select * from Employees
where JoiningDate in (select min(JoiningDate) from Employees);
    
select * from JoiningDate;

DELIMITER $$
CREATE procedure Employees_Details(IN year INT)
BEGIN
select * from Employees
where YEAR (JoiningDate)=YEAR ;
END $$
DELIMITER ;

CALL Employees_Details(2017);