create database quanlydiemthi;
use quanlydiemthi;
create table HocSinh(
	maHS varchar(20) primary key,
	tenHS varchar(50),
	ngaySinh date,
	lop varchar(20),
	GT varchar(20)
);
create table GiaoVien(
	maGV varchar(20) primary key,
	tenGV varchar(50),
	SDT varchar(15)
);
create table MonHoc(
	maMH varchar(20) primary key,
	tenMH varchar(50),
	maGV varchar(20),
    foreign key (maGV) references GiaoVien(maGV)
);
create table BangDiem(
	maHS varchar(20),
	maGV varchar(20),
    diemThi int,
    ngayKT date,
	foreign key (maHS) references HocSinh(maHS),
	foreign key (maGV) references GiaoVien(maGV),
	primary key(maHS, maGV)
);