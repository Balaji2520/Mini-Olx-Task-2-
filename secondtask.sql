show databases;
create database product;
use product;
create table product(price int,productname varchar(50),period int, unique (productname));
desc products;
insert into product values(100,"book",238);
insert into product values(10000,"realme",178);
insert into product values(1500,"realme1",256);
insert into product values(2900,"realme2",198);
insert into product values(2000,"realme3",256);
insert into product values(6000,"realme4",256);
insert into product values(8000,"realme5",238);
insert into product values(5000,"realme6",198);
insert into product values(2000,"realme7",238);
insert into product values(2000,"realme8",256);
insert into product values(10000,"realme9",178);
insert into product values(1000,"novel book",198);
select * from product;
select * from product where productname like '%re%';
select * from product where productname like '%real%';
select * from product where productname like '%me%';
select * from product where productname like '%realme%';
select * from product where productname like '%book%';
select * from product where productname like '%@productname+%';
select * from product where (price between 1500 and 2000) and (period between 178 and 250);
select * from product where (price between 1500 and 2000) and (period between 178 and 198);
select * from product where (price between 1500 and 2000) or (period between 178 and 250);
select * from product where (price between 1500 and 2000) or (period between 178 and 198);
delete from product where productname like '%real%';
delete from product where productname like '%book%';
delete from product where productname like '%productname%';
update product set price=2000 where (price=1000) and  (period=198);