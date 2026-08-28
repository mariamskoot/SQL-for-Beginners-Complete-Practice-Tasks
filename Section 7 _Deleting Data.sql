-- 58. Delete a single customer row by their customer_id (pick one that has no orders, so the delete succeeds).
select * from customers
where customer_id = 7

delete from customers 
where customer_id = 7

select * from customers
where customer_id = 7

-- 59. Delete all products with a stock_quantity <10.
select * from products
where stock_quantity < 10

delete from products
where stock_quantity < 10

-- 60. Try to delete a department that still has employees linked to it, and record the error message that the foreign key produces.
delete from departments
where department_id = 3
--The DELETE statement conflicted with the REFERENCE constraint "FK_employees_department"

-- 61. Delete all order items belonging to a single cancelled order.
select * from orders
where order_id = 5        --> cancelled

select *from order_items
where order_id = 5

delete from order_items
where order_id = 5

-- 62. Delete the order itself only after all its related order items have been removed.
delete from orders
where order_id = 5

-- 63. Delete all rows from the projects table where end_date is earlier than 2025-01-01 (pick a date that matches your data, or insert a test row first)
select * from projects
where end_date < '2025-01-01'

delete from projects
where end_date < '2025-01-01'


