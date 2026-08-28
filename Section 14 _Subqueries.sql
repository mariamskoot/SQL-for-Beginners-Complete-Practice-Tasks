-- 121. Find all employees whose salary is higher than the average salary of the whole company, using a subquery.
select * from employees
where salary > (select avg(salary) from employees)

-- 122. Find all products whose price is higher than the average price of their own category, using a correlated subquery.
select * from products p
where price > (
    select avg(p2.price) from products p2
    where p2.category = p.category
)

-- 123. Find all customers who have never placed an order, using a subquery with NOT IN.
select * from customers
where customer_id not in ( select customer_id from orders)

-- 124. Find the department with the highest total salary cost, using a subquery or a grouped query.
select top 1 d.department_name, sum(e.salary) as total_salary from departments d
join employees e
on d.department_id = e.department_id
group by d.department_name
order by total_salary desc

-- 125. Find the name of the product that has been ordered the most times in total (highest summed quantity), using a subquery
select top 1 p.product_name, sum(oi.quantity) as total_quantity from products p
join order_items oi
on p.product_id = oi.product_id
group by p.product_name
order by total_quantity desc

