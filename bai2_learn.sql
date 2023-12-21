create database QuanLyBanHang;
use quanlybanhang;
create table Customer(
	cID int primary key auto_increment,
	cName varchar(30) not null,
	cAge int not null
);
create table Orders(
	oID int primary key auto_increment,
	cID int,
	oDate date,
	oTotalPrice decimal(5, 2),
	foreign key (cID) references Customer(cID)
);
create table Product(
	pID int primary key auto_increment,
	pName varchar(30),
	pPrice decimal(5, 2)
);

create table OrderDetail(
	oID int,
	pID int,
    adQTY varchar(30),
    foreign key (oID) references Orders(oID),
	foreign key (pID) references Product(pID),
    primary key(oID, pID)
);