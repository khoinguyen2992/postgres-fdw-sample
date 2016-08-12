#create database
create database remote;

#(opt) create schema
create schema remote;

#create table
create table drivers
(
  id serial not null primary key,
  name varchar(20) not null,
  age integer not null
);

#(opt) create table with schema
create table remote.drivers
(
  id serial not null primary key,
  name varchar(20) not null,
  age integer not null
);

#insert data to table
insert into drivers(name, age) values
('a', 20),
('b', 21),
('c', 22),
('d', 23),
('e', 24),
('f', 25),
('g', 26),
('h', 27),
('i', 28),
('j', 29);

#(opt) insert data to table
insert into remote.drivers(name, age) values
('a', 20),
('b', 21),
('c', 22),
('d', 23),
('e', 24),
('f', 25),
('g', 26),
('h', 27),
('i', 28),
('j', 29);