use banking_db;
create table Accounts
(
	AccountID  int, AccountType varchar(20),
    balance decimal(10,2)
);
desc Accounts;

create table Transaction
(
	TransactionID int,
	Acccount decimal (10,2),
    TransactionType varchar(20)
);
desc Transaction;

create table Branches
(
	BranchID int, BranchName varchar(100),
    Branchaddress varchar(200), BranchPhone varchar(15)
);
desc Branches;

create table AccountBranches
(
	AsssingmentDate date
);
desc AccountBranches;

Create table Loans
(
	LoanID int, LoanAmount decimal(10,2), IntrestRate decimal(5,2),StartDate date, EndDate date
);
desc Loans;

show tables;
# Modify the table structure by using ALTER command
/* 
1) Add new column 
2) modify existing column
3) rename column
4) Add constraints
5) remove constraints
*/
desc Customers;
alter table Customers modify Phone bigint;
desc Customers;

-- Change Data type of existing table ---
Desc Customers;

-- Add minimum balance Constant ----
alter table Customers add column Balance bigint;

alter table  Customers
add constraints chk_minBalance
check(Balance>=5000);

-- Drop 'Accountbranches' table ---
-- syntax : drop table < table_name>;----
drop table AccountBranches;

desc Customers;
show tables;

-- add primary key constraints to 'CustomerID' in Customer table--
alter table Customers
add primary key(Customer_ID );

select * from Customers;

create table employees(
employee_id int,
Firstname varchar(50),
Lastname varchar(50),
Email varchar (100),
Phone varchar(20)
);

insert into employees(employee_id ,
Firstname,
Lastname,
Email,
Phone) values (101,'Raj','Kapoor','Kapoorraj@gmail.com',1290235678),
(102,'Vaishu','Soni','sonivaishu@gmail.com',9389750190);
select * from employees;











    
