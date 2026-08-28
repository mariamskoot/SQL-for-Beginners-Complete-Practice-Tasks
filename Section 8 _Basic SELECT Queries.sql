-- 64. Select all columns and all rows from the employees table.
select * from employees

-- 65. Select only first_name, last_name, and salary from employees.
select first_name, last_name, salary from employees


-- 66. Select all distinct cities that appear in the customers table.
select distinct city from customers

-- 67. Select all distinct categories from the products table.
select distinct category from products

-- 68. Select the product_name and price of every product, renaming the price column to unit_cost in the output.
select product_name, price as unit_cost from products

-- 69. Select all columns from orders but only the first 5 rows.
select top 5 * from orders

-- 70. Select the first_name and last_name of employees, combined into a single column called full_name.
select concat(first_name,' ', last_name) as full_name from employees

-- 71. Select all rows from products and compute a new column showing the price after a 10% discount.
select *, price*1.10 as discounted  from products 

-- 72. Select all employees and add a column that shows the salary multiplied by 12 (yearly total), labeled annual_salary.
select *, salary*12 as annual_salary from employees

-- 73. Select all rows from the departments table ordered alphabetically by name
select * from departments 
order by department_name

