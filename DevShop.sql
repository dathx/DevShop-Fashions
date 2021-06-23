
use master
go


CREATE DATABASE PS12656_HoangXuanDat_BanHang
go
use  PS12656_HoangXuanDat_BanHang
go

CREATE TABLE accounts
(
	username varchar(20) primary key,
	password varchar(50) not null,
	activated bit,
	role bit,
	email varchar(50),
	fullname nvarchar(50),
	image varchar(50)
)
GO
CREATE TABLE  categories (
	 id   varchar (10) primary key,
	 name   nvarchar (50) NULL,
)
go

CREATE TABLE  products (
	id int identity(1,1) primary key,
	name nvarchar(50) NULL,
	available bit,--trang thai
	createdate date,--ngay them
	image varchar(50) NULL,
	price bigint NULL,
	categoryid   varchar (10) references categories(id)
)

go
CREATE TABLE  orders (
	 id   int  IDENTITY(1,1) primary key,
	 address   nvarchar (50) NULL,
	 createdate   date  NULL,
	 username   varchar (20) references accounts(username)
)
go

CREATE TABLE  orderdetails (
	 id   int  IDENTITY(1,1) primary key,
	 price   float  NULL,
	 quantity   int  NULL,
	 orderid   int  references orders(id),
	 productid   int  references products(id)
)
GO

select * from accounts
go
select * from categories
go
select * from products
go
select * from orders
go
select * from orderdetails
go


insert into accounts values ('dathx','123',1,1,'datcoicc@gmail.com',N'Hoàng Xuân Đạt','')
insert into accounts values ('admin','123',1,0,'admin@gmail.com',N'Nguyễn Văn Tèo','')
insert into accounts values ('datcoi','123',0,1,'hxuandat2001@gmail.com',N'Hoàng Xuân Đạt','')
insert into accounts values ('diemphuoc','123',1,1,'diemphuoc555@gmail.com',N'Quách Diễm Phước','')
insert into accounts values ('user01','123',0,1,'nguyenvana@gmail.com',N'Nguyễn Văn A','')


insert into categories values ('TS01','T-Shirt')
insert into categories values ('CH01','Caps & Hats')
insert into categories values ('CM01','Cups & Mugs')
insert into categories values ('HD01','Hoodie')


insert into products values ('Bug T-Shirt',1,'2021-01-02','ao1.jpg',20.5,'TS01')
insert into products values ('Code T-Shirt',1,'2021-04-02','ao2.jpg',25.4,'TS01')
insert into products values ('C T-Shirt',1,'2021-01-01','ao3.jpg',25.5,'TS01')
insert into products values ('Action T-Shirt',1,'2021-01-01','ao4.jpg',50.5,'TS01')
insert into products values ('T-Shirt for coders',1,'2021-01-02','ao5.jpg',50.5,'TS01')
insert into products values ('Code T-Shirt',1,'2021-01-02','ao6.jpg',50.5,'TS01')
insert into products values ('Love code T-Shirt',1,'2021-01-02','ao7.jpg',50.5,'TS01')
insert into products values ('Line code T-Shirt',1,'2021-01-02','ao8.jpg',44.5,'TS01')
insert into products values ('CODE T-Shirt',1,'2021-01-02','ao9.jpg',45.5,'TS01')
insert into products values ('T-Shirt for coder',1,'2021-04-02','ao10.jpg',36.5,'TS01')
insert into products values ('T-Shirt for coder',1,'2021-05-02','ao11.jpg',45.5,'TS01')
insert into products values ('T-Shirt',1,'2021-09-02','ao13.jpg',22.5,'TS01')
insert into products values ('T-Shirt',1,'2021-07-02','ao14.jpg',25.5,'TS01')
insert into products values ('T-Shirt 1',0,'2021-07-02','ao12.jpg',25.5,'TS01')

insert into products values ('Coder Hat',1,'2021-07-02','cap1.jpg',12.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap2.jpg',17.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap3.jpg',18.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap4.jpg',22.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap5.jpg',19.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap6.jpg',22.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap7.jpg',25.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap8.jpg',24.5,'CH01')
insert into products values ('Coder Hat',1,'2021-07-02','cap9.jpg',14.5,'CH01')


insert into products values ('Coder Cup 1',1,'2021-07-02','ca1.jpg',12.5,'CM01')
insert into products values ('Coder Cup 2',1,'2021-07-02','ca2.jpg',17.5,'CM01')
insert into products values ('Coder Cup 3',1,'2021-07-02','ca3.jpg',18.5,'CM01')
insert into products values ('Coder Cup 4',1,'2021-07-02','ca4.jpg',22.5,'CM01')
insert into products values ('Coder Cup 5',1,'2021-07-02','ca5.jpg',19.5,'CM01')
insert into products values ('Coder Cup 6',1,'2021-07-02','ca6.jpg',22.5,'CM01')
insert into products values ('Coder Cup 7',1,'2021-07-02','ca7.jpg',25.5,'CM01')
insert into products values ('Coder Cup 8',1,'2021-07-02','ca8.jpg',24.5,'CM01')
insert into products values ('Coder Cup 9',1,'2021-07-02','ca9.jpg',14.5,'CM01')
insert into products values ('Coder Cup 10',1,'2021-07-02','ca10.jpg',14.5,'CM01')


insert into products values ('Coder Hoodie 1',1,'2021-05-24','hd1.jpg',14.5,'HD01')
insert into products values ('Coder Hoodie 2',1,'2021-05-24','hd2.jpg',15.5,'HD01')
insert into products values ('Coder Hoodie 3',1,'2021-02-24','hd3.jpg',11.5,'HD01')
insert into products values ('Coder Hoodie 4',1,'2021-05-24','hd4.jpg',22.5,'HD01')
insert into products values ('Coder Hoodie 5',1,'2021-07-24','hd5.jpg',23.5,'HD01')
insert into products values ('Coder Hoodie 6 ',1,'2021-05-24','hd6.jpg',25.5,'HD01')
insert into products values ('Coder Hoodie 7',1,'2021-05-22','hd7.jpg',26.5,'HD01')
insert into products values ('Coder Hoodie 8',1,'2021-05-24','hd8.jpg',14.5,'HD01')
insert into products values ('Coder Hoodie 9',1,'2021-05-24','hd9.jpg',32.5,'HD01')
insert into products values ('Coder Hoodie 10',1,'2021-05-24','hd10.jpg',14.5,'HD01')


