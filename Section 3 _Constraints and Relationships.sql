-- 18. Rewrite (or alter) the employees table so that email must always be unique across all employees.
alter table employees
add constraint unique_employee_email unique (email)

-- 19. Add a NOT NULL constraint to the hire_date column of employees.
alter table employees
alter column hire_date date not null

-- 20. Add a CHECK constraint to employees that ensures salary is always greater than 0.
alter table employees
add constraint check_salary check (salary >0)

-- 21. Add a foreign key to employees.department_id that references departments.department_id.
alter table employees
add constraint FK_employees_department
foreign key(department_id)
references departments(department_id)

-- 22. Add a foreign key to projects.department_id that references departments.department_id.
alter table projects
add constraint FK_projects_department
foreign key (department_id)
references departments(department_id)

-- 23. Add a foreign key to orders.customer_id that references customers.customer_id.
alter table orders 
add constraint FK_orders_customer
foreign key (customer_id)
references customers(customer_id)

-- 24. Add a foreign key to order_items.order_id that references orders.order_id, and another one to order_items.product_id referencing products.product_id.
alter table order_items 
add constraint FK_order_items_order
foreign key (order_id)
references orders(order_id)

alter table order_items 
add constraint FK_order_items_product
foreign key (product_id)
references products(product_id)


-- 25. Add a DEFAULT value of 'pending' to the status column of the orders table.
alter table orders
add constraint DF_orders_status
default 'pending' for status

-- 26. Add a UNIQUE constraint on the email column of the customers table.
alter table customers
add constraint unique_customers_email
unique(email)

-- 27. In one or two sentences, explain what a foreign key does and why it is useful
-- A foreign key --> connects two tables by referencing the primary key of another table
-- FK helps maintain referential integrity by preventing invalid relationships, such as assigning an employee to a department that does not exist.



