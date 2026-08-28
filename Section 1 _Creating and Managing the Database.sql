-- 1. Write a command to create a new database called company_store.
create database company_store

-- 2. Write a command to show/list all the databases that currently exist on your server.
select * from sys.databases

-- 3. Write a command to switch to (select/use) the company_store database so that all following commands run inside it.
use company_store

-- 4. Write a command that creates a database called temp_test only if it does not already exist.
if DB_ID('temp_test') is null
	create database temp_test

select * from sys.databases

-- 5. Write a command that permanently deletes the temp_test database.
drop database temp_test

select * from sys.databases

-- 6. Write a command to check which database you are currently connected to / working in.
select DB_NAME()

-- 7. In one or two sentences, explain the difference between a database and a table.
	-- A database --> container that holds related data and objects such as tables, views, and procedures
	-- A table --> object inside a database that stores data in rows and columns
