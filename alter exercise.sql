create database company_training;
use company_training;
create table departments(
department_id int not null,
dept_name varchar(80) not null,
city varchar (60));

create table employees(
employee_id int not null,
employee_name varchar(100) not null,
email varchar(120),
department_id int not null,
salary decimal(10,2),
status varchar(20));

alter table departments add primary key(department_id);
alter table employees add primary key(employee_id);
alter table departments add column location varchar(100);
alter table departments change column dept_name department_name varchar(80) not null;
alter table employees modify column salary decimal(12,2) not null;
alter table employees modify column status varchar(50) default 'active';
alter table employees add unique key (email);
alter table employees rename to staff;
alter table staff add constraint fk_id foreign key(department_id) references departments(department_id);
alter table staff drop index email;
alter table staff drop foreign key fk_id;
alter table staff drop primary key;
alter table staff add primary key(employee_id);
alter table departments drop column location;
create database company_management;
use company_management;
rename table company_training.staff to company_management.staff;
rename table company_training.departments to company_management.departments;
drop database company_training; 
