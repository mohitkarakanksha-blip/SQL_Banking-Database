create database n325_db;
show database;

-- to display database --
-- to select the database --
use n325_db;

-- command to create table --

create table if not exists Employee
(
	emp_id int, 
    emp_name varchar(20),
    salary double,
    hiring_date date
);

-- describe the table--
desc Employee;

-- insert records in table--
insert into Employee(emp_id, emp_name, hiring_date) value(1,'Aniket','26-01-26');

-- display the retrive table--
select * from Employee;

create database Banking_DB;
use Banking_DB;
create table Customers
(	Customer_ID int,
	FirtName varchar(50),
    LastName varchar(50),
    Email varchar(15),
    Phone varchar(15)
);

desc Customers;

-- to add new column 'accountcreationdate'---->DATE--
alter table Customers add column AccountCraetionDate date;
desc customers;

insert into Customers(Customer_ID,FirtName,LastName,Email,Phone,AccountCraetionDate) 
value(101,'Aniket','Kshirsagar','anii@gamil.com',9345678902,'2026-01-26');

-- to retrieve data from table --
-- syntax: select * from <table_name>; --
select * from Customers;

select FirtName, Email, AccountCraetionDate from Customers;





