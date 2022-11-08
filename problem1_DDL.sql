CREATE DATABASE COMPANY;

create table EMPLOYEE(
ssn int not null auto_increment,
fname varchar(225) not null,
lname varchar(225) not null,
bdate date NOT null ,
address varchar(225) NOT null,
gender varchar(225) not null,
salary int not null,
dno int not null,
PRIMARY KEY (ssn)
);


create table DEPARTMENT(
dnumber int not null auto_increment,
dname varchar(225) not null,
mgr_ssn int not null,
mgr_start_date date NOT null ,
PRIMARY KEY (dnumber)
);

create table PROJECT(
pnumber int not null auto_increment,
pname varchar(225) not null,
plocation varchar(225) not null,
dno int not null,
PRIMARY KEY (pnumber)
);