# PLSQL_Assignment
 
# Online Service Delivery.

An summary of the online delivery, created especially for Oracle courses to handle and store customer and product-related data, is given in this README. Tables for clients, orders, employees, and goods are included.

## Table Structures

### Customer Table

```sql
create table customer (
c_id int primary key,
f_name varchar(80) not null,
address varchar(50),
phone varchar(20) unique,
gender varchar(30) 
);
```

## Orders Table

```sql
create table orders (
o_id int primary key,
product_name varchar(100) not null,
QTY varchar (50),
price varchar(50) not null,
c_id int, 
foreign key(c_id) references customer(c_id)
);

```

## employee Table

```sql

create table Employee(
emp_id int primary key,
emp_name varchar(80) not null, 
Phone varchar(20) unique,
salary varchar(40) default '30000rwf',
o_id int, foreign key(o_id) references orders(o_id)
);
```

## products Table

```sql
create table product (
product_id int primary key ,
product_name varchar(80) not null,
price_at_supplier varchar (100) not null,
retail_price varchar(80) not null, 
stock_available varchar(20) not null,
safety_stock int ,
emp_id int, 
foreign key (emp_id) references employee(emp_id));
```






# Inserting Values into our tables

To insert records into the tables, you can use the following examples:

## Insert Customer

```sql
insert into customer(
c_id,
f_name,
address,
phone,
gender)
values(
2,
'yvonne',
'nyagimombo',
'0788567858',
'feMale')
;
insert into customer(
c_id,
f_name,
address,
phone,
gender)
values(
3,
'Kanyana',
'nyarugenge',
'0788565658',
'Female')
;
insert into customer(
c_id,
f_name,
address,
phone,
gender)
values(
4,
'Keza',
'gikondo',
'0791085658',
'Female')
;
insert into customer(
c_id,
f_name,
address,
phone,
gender)
values(
5,
'niyonsaba',
'Kiyovu',
'0788305188',
'Male')
;
```

## insert orders

```insert INTO orders(
o_id,
product_name,
QTY,
price,
c_id)
values(
1,
'blender',
'3',
'300',
2);
insert INTO orders(
o_id,
product_name,
QTY,
price,
c_id)
values(
2,
'powerbank',
'3',
'390',
1);

insert INTO orders(
o_id,
product_name,
QTY,
price,
c_id)
values(
3,
'blender',
'2',
'1000',
4);
insert INTO orders(
o_id,
product_name,
QTY,
price,
c_id)
values(
4,
'blender',
'1',
'700',
3);
insert INTO orders(
o_id,
product_name,
QTY,
price,
c_id)
values(
5,
'blender',
'4',
'40000',
5);
```
## Insert employee

```sql
insert Into Employee( 
emp_id,
emp_name,
PHONE,
o_id)
VALUES(
1,
'Christian bell',
'0781211988',
4);

insert Into Employee( 
emp_id,
emp_name,
PHONE,
o_id)
VALUES(
3,
'Maurice bell',
'078431988',
1);
insert Into Employee( 
emp_id,
emp_name,
PHONE,
o_id)
VALUES(
4,
'Papias bell',
'0788219128',
5);
insert Into Employee( 
emp_id,
emp_name,
PHONE,
o_id)
VALUES(
5,
'Habiyaremye riyad',
'078821928',
4);

```

## Insert products

```sql
insert into product(
product_id,
product_name,
price_at_supplier,
retail_price,
stock_available,
safety_stock,
emp_id)
VALUES(
1,
'blender',
'300',
'450',
200,
10,
3);
insert into product(
product_id,
product_name,
price_at_supplier,
retail_price,
stock_available,
safety_stock,
emp_id)
VALUES(
2,
'powerbank',
'300',
'450',
200,
10,
4);
insert into product(
product_id,
product_name,
price_at_supplier,
retail_price,
stock_available,
safety_stock,
emp_id)
VALUES(
3,
'capati',
'300',
'450',
200,
10,
5);
insert into product(
product_id,
product_name,
price_at_supplier,
retail_price,
stock_available,
safety_stock,
emp_id)
VALUES(
4,
'amata',
'300',
'450',
200,
10,
2);
insert into product(
product_id,
product_name,
price_at_supplier,
retail_price,
stock_available,
safety_stock,
emp_id)
VALUES(
5,
'imyembe',
'300',
'450',
200,
10,
1);
```






