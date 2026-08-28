-- 8. Create a table departments with columns: department_id (integer, primary key,auto-incrementing), department_name (text, cannot be empty).
create table departments(
	department_id int primary key identity(1,1),
	department_name varchar(100) not null
)

-- 9. Create a table employees with columns: employee_id (primary key, auto-increment),first_name, last_name, email, hire_date (a date), salary (a decimal number), anddepartment_id (a whole number).
create table employees(
	employee_id int primary key identity(1,1),
	first_name varchar(100), 
	last_name varchar(100), 
	email varchar(100),
	hire_date date,
	salary decimal(10,2), 
	department_id int
)

-- 10. Create a table projects with columns: project_id (primary key, auto-increment),project_name, start_date, end_date, and department_id.
create table projects(
	project_id int primary key identity(1,1),
	project_name varchar(100), 
	start_date date, 
	end_date date, 
	department_id int
)

-- 11. Create a table customers with columns: customer_id (primary key, auto-increment),full_name, email, city, join_date.
create table customers(
	customer_id int primary key identity(1,1),
	full_name varchar(100), 
	email varchar(100), 
	city varchar(100), 
	join_date date
)

-- 12. Create a table products with columns: product_id (primary key, auto-increment),product_name, category, price (decimal), stock_quantity (integer).
create table products(
	product_id int primary key identity(1,1),
	product_name varchar(100), 
	category varchar(100), 
	price decimal(10,2), 
	stock_quantity int
)

-- 13. Create a table orders with columns: order_id (primary key, auto-increment), customer_id,order_date, status (text).
create table orders(
	order_id int primary key identity(1,1), 
	customer_id int,
	order_date date, 
	status varchar(100)
)

-- 14. Create a table order_items with columns: order_item_id (primary key, auto-increment),order_id, product_id, quantity (integer), unit_price (decimal).
create table order_items(
	order_item_id int primary key identity(1,1),
	order_id int, 
	product_id int, 
	quantity int, 
	unit_price decimal(10,2)
)

-- 15. Write a command to list all the tables that currently exist inside company_store.
select * from sys.tables

-- 16. Write a command to show the full structure (column names, types) of the employees table.

-- Answer 1
-- sp_help 'employees'  or

-- Answer 2
select column_name, data_type
from INFORMATION_SCHEMA.columns
where TABLE_NAME='employees'


-- 17. Explain, in your own words, why department_id appears in both the departments table and the employees table
-- departments --> department_id (PK)
-- employees --> department_id (FK)
