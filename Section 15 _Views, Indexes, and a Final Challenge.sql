-- 126. Create a view called employee_department_view that shows employee name, salary, and department name together.
create view employee_department_view as
select e.first_name, e.last_name, e.salary, d.department_name from employees e
join departments d
on e.department_id = d.department_id

select * from employee_department_view

-- 127. Query the view you just created to select only employees earning more than 5000.
select * from employee_department_view
where salary > 5000

-- 128. Drop the view you created.
drop view employee_department_view

-- 129. Create an index on the email column of the customers table to speed up lookups.
create index idx_customer_email on customers(email)

-- 130. Explain in one or two sentences what an index does and why it should not be added to every single column.
-- An index helps the database find data faster especially when searching using that column. 

-- 131. Final challenge: Write a single query that produces a 'sales report' showing, for each customer: their name, the number of orders they placed, the total amount spent, and the date of their most recent order — sorted by total amount spent, highest first.
select c.customer_name,
    count(distinct o.order_id) as order_count,
    sum(oi.quantity * oi.unit_price) as total_spent,
    max(o.order_date) as most_recent_order
from customers c
left join orders o
on c.customer_id = o.customer_id
left join order_items oi
on o.order_id = oi.order_id
group by c.customer_id, c.customer_name
order by total_spent desc

-- 132. Final challenge: Write a query that finds the department that generated the most 'value' indirectly — defined as the sum of salaries of employees in that department who are also linked to at least one active project.
select top 1 d.department_name, sum(e.salary) as total_salary
from departments d
join employees e
on d.department_id = e.department_id
join projects p
on d.department_id = p.department_id
where p.start_date <= getdate() and p.end_date >= getdate()
group by d.department_name
order by total_salary desc

-- 133. Final challenge: Design and add one brand-new table of your own (for example suppliers or reviews), connect it to an existing table with a foreign key, insert sample data, and write one query that uses it in a JOIN
create table suppliers (
    supplier_id int primary key identity(1,1),
    supplier_name varchar(100),
    product_id int,
    foreign key (product_id) references products(product_id)
)

insert into suppliers (supplier_name, product_id)
values
('Tech Supplier', 1),
('Office Supplier', 3),
('Smart Store', 5),
('Global Products', 7)

select s.supplier_name, p.product_name, p.price from suppliers s
join products p
on s.product_id = p.product_id


