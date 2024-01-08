/*
1. Bobs wants you to track information on his customers
(first name, last_name, email, his employees (first name, last name, start date, position held),
his products, and the purchases customers make (which customer, when it was purchased, for hoe much money
think about how many tables you should create. which data goes in which tables? 
How should the tables relate to one another?
*/
-- table: customers
-- customer_id
-- first
-- last 
-- email

-- table: employees
-- employee_id 
-- first
-- last
-- start_date
-- position

-- table:  product
-- product_id
-- product_name
-- launched_date

-- tables: customer_purchases
-- customer_purchases_id
-- customer_id 
-- product_id
-- launced_date

/*
2
Given the database design you came up with , use workbenchm to create an ERR diagram of the database.
include things like primary keys and foreign keys, and aything else you think you should have in the tables.
make sure to use reasonable data types for each colunm*/

/*
3
 create a schema called project_1 . within the schema, create the tables that you have diagrames out.
-- make sure they relate to each other, and that they have the same reason data type you selected previously
*/

/* 
4. add any constraints you think ypour tables columns should have.
think through which columns needs to be unique , which ones are allowed to have null values, etc 
*/

CREATE DATABASE project_1;

USE  project_1;

CREATE TABLE customers(
customer_id int not null auto_increment,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
email VARCHAR(50) not null,
PRIMARY KEY (customer_id),
unique(first_name),
unique(last_name)
);



CREATE TABLE employees(
employee_id INT not null,
first_name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
start_date  DATE,
position  VARCHAR(50),
PRIMARY KEY (employee_id),
unique(first_name),
unique(last_name)
);

CREATE TABLE products(
product_id INT not null ,
product_name VARCHAR(50),
launch_date date,
PRIMARY KEY (product_id)
);

CREATE TABLE customer_purchases(
customer_purchase_id INT not null ,
customer_id INT not null,
product_id INT not null,
employee_id INT not null,
purchase_at DATE not null,
amount_NGN INT,
PRIMARY KEY (customer_purchase_id)
);


/* 
5
insert at least 3 records of data into each tables. the exact values, 
so feel free to make them up. just make sure taht the data you insert makes sense, and that tables tie togther
*/

INSERT INTO customers VALUES
( 1, 'Korede', 'maguire', 'korede@gmail.com'), 
(2, 'Asowo', 'kabir', 'Abiodunasowo@gmail.com'), 
(3, 'faris', 'blessing', 'fariisblessing12244@yahoo.com');

INSERT INTO products VALUES
(1, 'body spray', '2023-12-29'), 
(2, 'body cream', '2023-12-30'), 
(3, 'hair cream', '2023-12-31');

INSERT INTO employees VALUES
(1, 'qudus', 'qudri', '2023-12-28', 'control officer'),
(2, 'peter', 'adedeji', '2023-12-30', 'production supervior'),
(3, 'azeez', 'ajoke',  '2023-12-31', 'production manager');
SELECT * FROM customer_purchases;

INSERT INTO customer_purchases VALUES
(1, 1, 2, 1, '2023-12-29', 100), 
(2, 2, 1, 2, '2023-12-30', 80),
 (3, 3, 3, 3, '2023-12-31', 50);
 
 /* 
 6. creat two users and give them access to th database
 The first user. Tuckerelly, will be the DBA and should get full database administrator privileges.
 the second user, EllaBrody, is a analyst, and only need read access.alter
 





