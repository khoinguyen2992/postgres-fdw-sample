#create table
create database origin;

#create schema
create schema origin;

#create extension
create extension postgres_fdw;

#create server
create server postgres_remote
foreign data wrapper postgres_fdw
options(host '192.168.99.100', port '5433', dbname 'remote');

#create mapping
create user mapping for postgres
server postgres_remote
options(user 'postgres', password '1234');

#import all schema
import foreign schema remote from server postgres_remote into origin;

#create foreign table
create foreign table drivers(
  id integer not null,
  name varchar(20) not null
)
server postgres_remote
options(table_name 'drivers');

#create foreign table with schema
create foreign table drivers(
  id integer not null,
  name varchar(20) not null
)
server postgres_remote
options(schema_name 'remote', table_name 'drivers');
