-- 87. Select all employees ordered by salary from highest to lowest.
select * from employees
order by salary desc

-- 88. Select all products ordered by category, and within each category ordered by price ascending.
select * from products
order by category, price

-- 89. Select the 3 most recently hired employees.
select top 3 * from employees
order by hire_date desc

-- 90. Select the 5 cheapest products in the store.
select top 5 * from products
order by price

-- 91. Select all customers ordered by join_date, showing only rows 6 through 10 (Use OFFSET).
select * from customers
order by join_date
offset 5 rows
fetch next 5 rows only


