CREATE DATABASE Library;

create table BOOK(
book_id int not null auto_increment,
title varchar(225) not null,
price int not null,
pub_id int not null,
category_id int not null,
PRIMARY KEY (book_id)
);

create table CATEGORY(
category_id int not null auto_increment,
name varchar(225) not null,
PRIMARY KEY (category_id)
);

create table PUBLISHER(
pub_id int not null auto_increment,
name varchar(225) not null,
address varchar(225) not null,
PRIMARY KEY (pub_id)
);

create table MEMBER(
member_id int not null auto_increment,
name varchar(225) not null,
address varchar(225) not null,
join_date date default CURRENT_DATE,
PRIMARY KEY (member_id)
);

create table BORROWING_BOOK(
member_id int not null,
book_id int not null,
borrow_date date default CURRENT_DATE,
due_date date not null,
return_date date,
PRIMARY KEY (member_id, book_id, borrow_date)
);
