use banking_db;
CREATE TABLE Customers_01
(
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

alter table Customers modify Phone bigint;
desc Customers;

alter table  Customers
add constraint chk_minBalance
check(Balance>=5000);

select * from customers;

ALTER TABLE Customers 
DROP COLUMN AccountCraetionDate;

ALTER TABLE Customers 
DROP COLUMN Balance;

ALTER TABLE customers
ADD COLUMN Date_of_birth DATE;

INSERT INTO customers(Customer_ID, FirtName, LastName, Email, Phone, Date_of_birth)
values(102, 'Akanksha', 'Mohitkar', 'aaku@gmail.com','9373299269', '2005-08-20');

select * from customers;

INSERT INTO Customers(Customer_ID, FirtName, LastName, Email, Phone, Date_of_birth)
VALUES (103, 'Shomy', 'Shrivashtav', 'shomy@gmail.com', '9870664055', '2026-04-23');

UPDATE Customers SET Phone=9373228910 WHERE Customer_ID = 101;

-- SQL_SAFE_UPDATE = 0;     --  UPDATE Is NOT RUN When Use This Code ---
-- WE HAVE TO CHANGE DATABASE - THEN WE CAN USE ( INSERT, DELETE, UPDATE) ---
--  WE HAVE TO CHANGE DATA TYPE - (INSERT) ---

UPDATE Customers SET Email = 'shomu@gmail.com' WHERE Customer_ID = 103;

alter table Customers
modify Phone varchar(20);

SHOW TABLES;


-- ------------- #################################################### ------------ --
create table Accounts
(
	AccountID  int,
    AccountType varchar(20),
    balance decimal(10,2)
);

desc Accounts;

ALTER TABLE Accounts
ADD CONSTRAINT chk_minBalance
CHECK (Balance >= 10000);

select * from Accounts;

-- Violates the condition it does'nt accept balance less than 10000 --
INSERT INTO Accounts(AccountID, 
    AccountType, balance)
    values (202, 'Cureent', 999);
    
ALTER TABLE Accounts
ADD COLUMN Customer_ID INT;
    
ALTER TABLE Accounts
ADD CONSTRAINT FK_Accounts_Customers
FOREIGN KEY (Customer_ID)
REFERENCES Customers(Customer_ID);
    



