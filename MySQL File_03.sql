

use banking_db;
CREATE TABLE Customers_01
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

describe Customers_01;

insert into Customers_01(CustomerID, FirstName, LastName, Email, Phone)
values(101,'Raj','Karve','raj_k@gmail.com',9881004242);

Create Table persons(
   ID int NOT NULL,
   LastName varchar(255) NOT NULL,
   FirstName varchar(255)NOT NULL,
   Age int
   );
desc Persons;
-- add null constraints to 'Age' column--
ALTER table Persons modify column Age int NOT NULL;   
   

insert into Persons values(1,'Akanksha','Mohitkar',21);

select FirstName, LastName, concat(FirstName, " ", LastName) as 'Employee Name' from Persons;

-- Unique --
Alter table Persons add column Email varchar(200);

ALTER table Persons modify column Email varchar(200) unique;

desc Persons;
insert into Persons values
(2,'Saxsena','Rajeev',23,'rajeev-saxxsena@gmail.com'),
(3,'Kapoor','Jay',26,'kapoor_jay12@gmail.com'),
(4,'Kale','Prachi',23,'prachi_kale@gmail.com');

select *from Persons;

ALTER table Persons modify column ID int primary key;

desc Persons;

-- Check() constraint on 'age' column --
alter table Persons modify column age int check(age>18);

desc Persons;

select *from Persons;

insert into Persons values(5,'Gandhi','Rahul',55,'gandhi_rahul12@gmail.com');


-- Date :01/sep/2026--
-- Default Constraint in sql--