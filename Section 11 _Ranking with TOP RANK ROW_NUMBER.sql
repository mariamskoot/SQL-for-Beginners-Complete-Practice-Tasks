-- 92. Select the top 3 highest-paid employees using ORDER BY combined with TOP 
select top 3 * from employees
order by salary desc

-- 93. Select the top 5 most expensive products using TOP.
select top 5 * from products 
order by price desc

-- 94. Use ROW_NUMBER() to number every employee from 1 upward, ordered by salary descending.
select * , ROW_NUMBER() over (order by salary desc) as 'row_num'
from employees

-- 95. Use RANK() to rank employees by salary within their own department (i.e. reset the ranking for each department using PARTITION BY).
select * , RANK() over (partition by department_id
						order by salary desc) as 'rank'
from employees

-- 96. Use DENSE_RANK() on the same query as above and explain, in a sentence, how its result differs from RANK() when two employees are tied on salary.
select * , DENSE_RANK() over (partition by department_id
							order by salary desc) as 'dense_rank'
from employees;

-- 97. Using a window function, find the single highest-paid employee in each department (hint: rank within each department, then keep only rank = 1).
with ranked_employees as (
	select * , ROW_NUMBER() over (partition by department_id
								order by salary desc) as 'row_num'
	from employees)
select * from ranked_employees
where row_num = 1

-- 98. Use ROW_NUMBER() partitioned by category to find the 2 cheapest products in each product category
with ranked_products as (
	select * , ROW_NUMBER() over (partition by category
								order by price) as 'row_num'
	from products)
select * from ranked_products
where row_num <=2


