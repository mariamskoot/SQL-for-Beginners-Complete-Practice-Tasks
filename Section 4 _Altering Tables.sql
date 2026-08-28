-- 28. Add a new column phone_number (text) to the employees table.
alter table employees
add phone_number varchar(50)

-- 29. Add a new column is_manager (boolean, default false) to the employees table.
alter table employees
add is_manager bit not null 
	constraint DF_employees_is_manager default 0

-- 30. Rename the column full_name in customers to customer_name.
exec sp_rename
	'customers.full_name',
	'customer_name',
	'column'
	

-- 31. Change the data type of phone_number so it can store up to 20 characters.
alter table employees
alter column phone_number varchar(20)

-- 32. Add a column discount (decimal, default 0) to the order_items table.
alter table order_items
add discount decimal(10,2) not null
	constraint DF_order_items_discount default 0
	
-- 33. Remove the is_manager column from the employees table.
alter table employees
drop constraint DF_employees_is_manager

alter table employees
drop column is_manager

-- 34. Rename the entire order_items table to order_line_items, then rename it back to order_items.
exec sp_rename
	'order_items',
	'order_line_items'

exec sp_rename
	'order_line_items',
	'order_items'

-- 35. Add a column budget (decimal) to the projects table.
alter table projects
add budget decimal(10,2) 

-- 36. Write a command that removes the CHECK constraint you created earlier on employees.salary.
EXEC sp_help 'employees';

alter table employees
drop constraint check_salary

-- 37. Write a command to completely empty the temp_test table's data without deleting the table itself
--(if you still have a leftover test table; otherwise create one first and then empty it)
create table temp_test(
	id int,
    name varchar(100)
)

insert into temp_test values
	(1, 'Test1'),
	(2, 'Test2')

select * from temp_test

truncate table temp_test
select * from temp_test


