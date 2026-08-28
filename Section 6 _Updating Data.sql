-- 48. Give every employee in the IT department a 10% raise.
select * from employees

update employees
set salary = salary * 1.10
where department_id = 3

-- 49. Update a single employee (by their employee_id) to change their email address.
update employees
set email = 'new.email@company.com'
where employee_id = 1

-- 50. Set the status of all orders placed before a specific date to 'completed'.
select * from orders

update orders
set status = 'completed'
where order_date < '2024-05-10'

-- 51. Increase the stock_quantity of a specific product by 50 units.
select * from products

update products
set stock_quantity = stock_quantity+50
where product_id = 3

-- 52. Apply a 15% price increase to every product in one category of your choice.
update products 
set price = price * 1.15
where category = 'Accessories'

-- 53. Update the phone_number of an employee where it is currently missing (NULL).
select * from employees

update employees
set phone_number = '01011111111'
where phone_number IS NULL


-- 54. Change the department_id of one employee to move them to a different department.
update employees
set department_id = 4
where employee_id = 2

-- 55. Update the discount column of all order_items rows with a quantity greater than 3 to 0.05 (5%).
select * from order_items

update order_items
set discount = 0.05
where quantity > 3

-- 56. Attempt to update every row of the employees table without a WHERE clause, observe what happens, then explain in a sentence why this is dangerous in real-world databases.
select * from employees

UPDATE employees
SET salary = salary + 1     -- all raws will be affected

-- 57. Update the end_date of a project that has no end date yet, setting it to a chosen future date
insert into projects
    (project_name, start_date, end_date, department_id)
values
('New Data Platform', '2025-01-01', NULL, 3)

update projects
set end_date = '2025-12-31'
where end_date IS NULL;
