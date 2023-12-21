create database quanlydathang;
use quanlydathang;
create table dvDH(
	maDH int primary key auto_increment,
	tenDH varchar(30) not null,
	diachi text,
	SDT varchar(15)
);
create table dvKH(
	maKH int primary key auto_increment,
	tenKH varchar(30) not null,
	diachi text
);
create table hang(
	maHang int primary key auto_increment,
	tenHang varchar(30) not null,
	dvTinh varchar(15),
	motaHang text
);
create table nguoiDat(
	maND int primary key auto_increment,
	tenND varchar(30) not null
);
create table noiGiao(
	maDDG int primary key auto_increment,
	tenDDG varchar(50) not null
);
create table nguoiNhan(
	maNN int primary key auto_increment,
	tenNN varchar(30) not null
);
create table nguoiGiao(
	maNG int primary key auto_increment,
	tenNG varchar(30) not null
);
create table thuoc1(
	maDH int,
	maND int,
	foreign key (maDH) references dvDH(maDH),
	foreign key (maND) references nguoiDat(maND),
	primary key (maDH, maND)
);
create table thuoc2(
	maKH int,
	maNN int,
	foreign key (maKH) references dvKH(maKH),
	foreign key (maNN) references nguoiNhan(maNN),
	primary key (maKH, maNN)
);
create table dat(
	maDH int primary key auto_increment,
	maND int,
    maHang int,
	ngayDat date,
	soluong int,
	foreign key (maND) references nguoiDat(maND),
	foreign key (maHang) references hang(maHang)
);
create table giao(
	maGH int primary key auto_increment,
    maNN int,
	maHang int,
	maDDG int,
	maNG int,
	ngayGH date,
	soluong int,
	dongia decimal(5,2),
	foreign key (maNN) references nguoiNhan(maNN),
	foreign key (maHang) references hang(maHang),
	foreign key (maDDG) references noiGiao(maDDG),
	foreign key (maNG) references nguoiGiao(maNG)
);