drop database if exists company_traning;
create database company_traning;
use company_traning;

create table departments (
department_id int not null,
dept_name varchar(80) not null,
city varchar(60)
);
create table employees (
employee_id int not null,
email varchar(120),
department_id int not null,
salary decimal(10,2),
status varchar(20)
);
alter table departments
add primary key (department_id);

alter table employees
add  primary key (employee_id);

alter table departments
add column location varchar(100);

alter table departments
rename column dept_name to department_name;

alter table employees
modify column salary decimal(12,2);

alter table employees 
alter column status set default('active');

alter table employees
add constraint uq_employees_email unique (email);

rename table employees to staff;

alter table staff
add constraint fk_staff_department
foreign key (department_id)
references departments(department_id);

alter table staff
drop index unique_employees_email;

alter table staff
drop foreign key fk_staff_department;

alter table staff
drop primary key;

alter table staff
add primary key(employee_id);

alter table department
drop column location;

create database company_management;
rename table
company_training.departments to company_management.department,
comapany_traning.staff to company_management.staff;

drop database company_tranning;













