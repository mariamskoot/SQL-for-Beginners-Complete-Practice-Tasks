-- 111. Write an INNER JOIN that lists every employee's name alongside their department name.
select e.first_name, e.last_name, d.department_name
from employees e
inner join departments d
on e.department_id = d.department_id

-- 112. Write a LEFT JOIN that lists every department alongside its employees, including departments that currently have no employees.
select d.department_name, e.first_name, e.last_name
from departments d
left join employees e
on d.department_id = e.department_id

-- 113. Write a LEFT JOIN that lists every customer alongside their orders, including customers who have never placed an order.
select c.customer_name, o.order_id, o.order_date
from customers c
left join orders o
on c.customer_id = o.customer_id

-- 114. Write an INNER JOIN that lists each order together with the customer's name who placed it.
select o.order_id, c.customer_name
from orders o
inner join customers c
on o.customer_id = c.customer_id

-- 115. Write a query that joins orders, order_items, and products to show, for each order, the product names and quantities it contains.
select o.order_id, p.product_name, oi.quantity from orders o
inner join order_items oi
on o.order_id = oi.order_id
inner join products p
on oi.product_id = p.product_id

-- 116. Write a query joining employees and projects (through departments) to show which employees belong to a department running a specific project.
select e.first_name, e.last_name, p.project_name from employees e
inner join departments d
on e.department_id = d.department_id
inner join projects p
on d.department_id = p.department_id

-- 117. Write a query that shows each customer's name and the total amount they have spent across all their orders (join + aggregate).
select c.customer_name, sum(oi.quantity * oi.unit_price) as total_spent from customers c
inner join orders o
on c.customer_id = o.customer_id
inner join order_items oi
on o.order_id = oi.order_id
group by c.customer_name

-- 118. Write a query that lists all products that have NEVER appeared in any order (hint: LEFT JOIN + WHERE ... IS NULL).
select p.product_name from products p
left join order_items oi
on p.product_id = oi.product_id
where oi.product_id is null

-- 119. Write a query that lists all employees who work in departments with no projects (LEFT JOIN + IS NULL).
select e.first_name, e.last_name, d.department_name from employees e
inner join departments d
on e.department_id = d.department_id
left join projects p
on d.department_id = p.department_id
where p.project_id is null

-- 120. Write a self-join style comparison (or a query using a join and grouping) to find, for each department, the employee with the highest salary in that department
select e.first_name, e.last_name, e.department_id, e.salary from employees e
where e.salary = (
    select max(e2.salary)
    from employees e2
    where e2.department_id = e.department_id
)

