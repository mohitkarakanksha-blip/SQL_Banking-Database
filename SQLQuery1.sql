create database bankingDB1;

CREATE table Customers
(
	customerId int, Firstname varchar(50),
	Lastname varchar(50), Email varchar(100),
	Phone varchar(20)
);

-- to add new column 'AccountCreationDate'-->DATE--

alter table Customers 
add AccountCreationDate date;

insert into Customers
(CustomerID, Firstname, Lastname, Email,Phone,AccountCreationDate)
values(101,'Raj','Kurve','raj@gamil.com',6789450023,'2025-10-25');

select * from Customers;

CREATE TAble Accounts_Data (
	AccountID INT,
	AccountType varchar(20),
	Balance decimal(10,2)
);


CREATE TABLE Transaction_Data (
	TransactionID INT,
	TransactionDate Date,
	Amount DECIMAL(10,2),
	TransactionType varchar(20)
);

CREATE TABLE Branches(
	Branch INT, BranchName varchar(100),
	BranchAddress varchar(200), BranchPhone varchar(15)
);

CREATE TABLE Loans(
	LoanID INT, LoanAmount decimal(10,2), IntrestRate decimal(5,2),StartDate Date, EndDate date
);

-- structure of table--
--desc Accounts;
--desc Transaction;--
--show tables;--

-- Modify the table structure  by using alter command--
/*
1) add new column
2) Modify existing column
3) Rename column
4) add constraints
5) Remove Constraints
*/

--alter table Customers modify Phone varchar(30);--
alter table Customers alter column Phone varchar(30);

-- Add minimal balance constraints --
--alter table Customers add column Balance bigint;--
alter table Customers add Balance bigint;

ALTER table Customers
add constraint check_min_balance
check(Balance>=5000);

-- Drop 'accountbranches' table --
-- syntax: DROP  TABLE <table_name>;--
--DROP table Accounts_Data;--

-- Add primary key constrainsts to CustomerID in Customer table--

alter table Customers
ALTER column CustomerID INT NOT NULL;


--Add unique constaraints to 'phone' of 
alter table Customers
add unique(Phone);
