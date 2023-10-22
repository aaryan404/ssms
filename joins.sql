create database test1;
use test1;

create table customers(customerID int primary key , customerFname varchar (20) , customerLname varchar(20));
insert into customers(customerID , customerFname , customerLname)
values(1001 , 'aaryan' , 'khatri'),
(1002 , 'ram' , 'dahal'),
(1003 , 'shyam' , 'kadarya'),
(1004 , 'hari' , 'limbu'),
(1005 , 'sita' , 'rijal'),
(1006 , 'gita' , 'thakuri'),
(1007 , 'rita' , 'panta'),
(1008 , 'bhola' , 'rai'),
(1009 , 'pratyasha' , 'khanal'),
(1010 , 'ravi' , 'goyal');

select * from customers;

create table transactions(transactionID int primary key ,product varchar (20), customerID int, foreign key(customerID) references customers(customerID));
insert into transactions(transactionID , product, customerID)
values(2001 , 'soap' ,1002 ),
(2002 , 'chips' , 1004),
(2003 , 'chips' , 1002),
(2004 , 'rice' ,1001),
(2005 , 'daal' ,1010),
(2006 , 'chicken' , 1009),
(2007 , 'rice' , 1006),
(2008 , 'daal' , 1005),
(2009 , 'goat' , 1009),
(2010 , 'coke' , 1004);

select * from transactions;

alter table transactions
alter column customerID int null;

update transactions set customerID = null where transactionID = 2002;


SELECT c.customerFname, c.customerLname, t.transactionID, t.product, c.customerID
FROM customers c
right JOIN transactions t ON c.customerID = t.customerID;
