create table customer (
c_id int primary key,
f_name varchar(80) not null,
address varchar(50),
phone varchar(20) unique,
gender varchar(30) );

create table orders (
o_id int primary key,
product_name varchar(100) not null,
QTY varchar (50),
price varchar(50) not null,
c_id int, 
foreign key(c_id) references customer(c_id)
);

create table Employee(
emp_id int primary key,
emp_name varchar(80) not null, 
Phone varchar(20) unique,
salary varchar(40) default '30000rwf',
o_id int, foreign key(o_id) references orders(o_id));

create table product (
product_id int primary key ,
product_name varchar(80) not null,
price_at_supplier varchar (100) not null,
retail_price varchar(80) not null, 
stock_available varchar(20) not null,
safety_stock int ,
emp_id int, 
foreign key (emp_id) references employee(emp_id));  
