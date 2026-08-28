-- 74. Select all employees with a salary greater than 5000.
select * from employees
where salary > 5000

-- 75. Select all employees who work in the department with department_id = 2.
select * from employees
where department_id = 2

-- 76. Select all products whose price is between 2000 and 10000.
select * from products
where price between 2000 and 10000

-- 77. Select all customers who live in one specific city.
select * from customers
where city = 'cairo'

-- 78. Select all orders with a status of either 'pending' or 'shipped' using IN.
select * from orders
where status = 'pending' or status= 'shipped'

-- 79. Select all employees whose first name starts with the letter 'A' using LIKE.
select * from employees
where first_name like 'a%'

-- 80. Select all products whose name contains the word 'art' anywhere in it.
select * from products
where product_name like '%art%'

-- 81. Select all employees who do NOT belong to the IT department.
select * from employees
where department_id != 3

-- 82. Select all employees whose phone_number is currently NULL.
select * from employees
where phone_number is null

-- 83. Select all employees whose salary is NOT NULL.
select * from employees
where salary is not null

-- 84. Select all orders placed in the last 30 days (relative to today's date).
select * from orders
where order_date > getdate() - 30

-- 85. Select all products with a price greater than 50 AND a stock quantity greater than 10.
select * from products
where price > 50 and stock_quantity > 10

-- 86. Select all customers who joined either in 2023 OR live in a specific city
select * from customers
where year(join_date) = 2023 or city = 'cairo'
