create database shoppingmall;

use shoppingmall;

drop table product;
drop table saleorder;
drop table item;


create table product(
id		int primary key,
category	varchar(10) not null,
wname		varchar(20) not null,
pname		varchar(20) not null,
sname		varchar(20) not null,
price		int default 0,
downprice	int default 0,
inputdate	varchar(20),
stock		int default 0,
description	text,
small		varchar(20),
large		varchar(20)
);

create table saleorder(
id		int primary key,
name		varchar(20) not null,
orderdate	varchar(20) not null,
addr		varchar(50) not null,
tel		varchar(20) not null,
pay		varchar(10) not null,
cardno		varchar(20) not null,
prodcount	int default 0,
total		int default 0
);

create table item(
orderid		int not null,
mynum		int not null,
prodid		int not null,
pname		varchar(40),
quantity	int default 0,
price		int default 0
);

select * from product;

select * from saleorder;	-- 주문 테이블

select * from item;		-- 주문한 상품의 자세한 정보

desc product;

select * 
from saleorder s join item i
on s.id = i.orderid;
