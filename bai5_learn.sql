create database quanlysinhvien;
use quanlysinhvien;
create table Class(
	classID int primary key not null auto_increment,
	className varchar(60) not null,
	startDate datetime not null,
	classStatus bit default(1) 
);
create table Student(
	studentID int primary key not null auto_increment,
	studentName varchar(30) not null,
	address varchar(50),
	phone varchar(20),
	studentStatus bit default(1),
	classID int not null,
	foreign key (classID) references Class(classID)
);
create table Sub(
	subID int not null primary key auto_increment,
	subName varchar(30) not null,
	credit tinyint default(1) check(credit>=1),
	subStatus bit default(1)
);
create table Mark(
	markID int not null primary key auto_increment,
	subID int not null unique,
	studentID int not null unique,
	mark float default(0) check(0<=mark<=100),
    examTimes tinyint default(1),
	foreign key (subID) references Sub(subID),
	foreign key (studentID) references Student(studentID)
)
