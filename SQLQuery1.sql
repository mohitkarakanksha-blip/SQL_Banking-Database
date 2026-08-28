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