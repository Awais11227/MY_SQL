create database customers;
use customers;
create table customers (
customerid int primary key,
customername varchar(50),
contactname varchar(50),
address varchar(100),
city varchar(50),
postalcode numeric,
country varchar(50)
);
insert into customers values
(1, "alfred futterkiste", "maria anders", "obere str.57", "berlin", 12209, "germany"),
(2, "ana trujilo emparedados yhelados", "ana trujillo", "avda. de la constitcucion 2222", "mexico d.f.", 05021, "mexico"),
(3, "antonio moreno taqueria", "antonio moreno", "maraderos 2312", "mexico d.f.", 05023, "mexico"),
(4, "arounf the horn", "thomas hardy", "120 hanover sq.", "london", 00500, "uk"),
(5, "berglunds snabbkop", "christina berglund", "berguvsvagen 8", "lulea", 80000, "sweden");
select * from customers;
select *
from customers 
where country = 'uk';
select * 
from customers
where customername like '%s';
