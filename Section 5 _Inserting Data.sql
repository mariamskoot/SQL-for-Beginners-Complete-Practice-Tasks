-- 38. Insert 4 rows into departments: HR, Sales, IT, and Marketing.
insert into departments (department_name)
values ('HR'), ('Sales'), ('IT'), ('Marketing')

select * from departments

-- 39. Insert 10 rows into employees, spreading them across the 4 departments, with varied salaries and hire dates.
insert into employees
    (first_name, last_name, email, hire_date, salary, department_id, phone_number)
values
('Ahmed', 'Hassan', 'ahmed.hassan@company.com', '2021-03-15', 8500.00, 1, '01012345678'),
('Amira', 'Awad', 'amira.awad@company.com', '2022-06-20', 9200.00, 1, '01023456789'),
('Omar', 'Khaled', 'omar.khaled@company.com', '2020-01-10', 12000.00, 2, '01034567890'),
('Sara', 'Mohamed', 'sara.mohamed@company.com', '2023-02-05', 7800.00, 2, '01045678901'),
('Youssef', 'Adel', 'youssef.adel@company.com', '2019-11-25', 15000.00, 3, '01056789012'),
('Nour', 'Samir', 'nour.samir@company.com', '2022-09-12', 10500.00, 3, '01067890123'),
('Karim', 'Tarek', 'karim.tarek@company.com', '2021-07-18', 11000.00, 3, '01078901234'),
('Mariam', 'Skoot', 'mariam.skoot@company.com', '2024-01-08', 7000.00, 4, '01089012345'),
('Ali', 'Mostafa', 'ali.mostafa@company.com', '2023-05-22', 8200.00, 4, '01090123456'),
('Salma', 'Mahmoud', 'salma.mahmoud@company.com', '2020-08-30', 9800.00, 2, '01101234567')

select * from employees

-- 40. Insert one employee using only the required columns (omit the optional ones) to confirm that defaults/nulls work correctly.
insert into employees (hire_date) values ('2024-07-01')

-- 41. Insert 5 rows into projects, linked to different departments, with different start and end dates.
insert into projects
    (project_name, start_date, end_date, department_id)
values
('Employee Management System', '2024-01-01', '2024-06-30', 1),
('Sales Dashboard', '2024-02-15', '2024-08-15', 2),
('Cloud Migration', '2024-03-01', '2024-12-31', 3),
('Marketing Campaign 2024', '2024-04-10', '2024-07-31', 4),
('Customer Analytics Platform', '2024-06-01', '2025-01-31', 3)

select * from projects

-- 42. Insert 8 rows into customers from at least 3 different cities.
insert into customers
    (customer_name, email, city, join_date)
values
('Mohamed Ahmed', 'mohamed.ahmed@gmail.com', 'Cairo', '2023-01-15'),
('Sara Hassan', 'sara.hassan@gmail.com', 'Alexandria', '2023-03-20'),
('Omar Ali', 'omar.ali@gmail.com', 'Giza', '2023-05-10'),
('Mariam Khaled', 'mariam.khaled@gmail.com', 'Cairo', '2023-07-25'),
('Youssef Samir', 'youssef.samir@gmail.com', 'Tanta', '2023-09-12'),
('Nour Adel', 'nour.adel@gmail.com', 'Alexandria', '2024-01-05'),
('Hana Mostafa', 'hana.mostafa@gmail.com', 'Giza', '2024-02-18'),
('Karim Mahmoud', 'karim.mahmoud@gmail.com', 'Cairo', '2024-04-30')

select * from customers

-- 43. Insert 10 rows into products across at least 3 different categories, with varied prices and stock quantities.
insert into products
    (product_name, category, price, stock_quantity)
values
('Laptop', 'Electronics', 35000.00, 15),
('Smartphone', 'Electronics', 18000.00, 25),
('Tablet', 'Electronics', 12000.00, 20),
('Keyboard', 'Accessories', 850.00, 50),
('Mouse', 'Accessories', 450.00, 80),
('Headphones', 'Accessories', 1500.00, 40),
('Office Chair', 'Office', 4500.00, 12),
('Desk', 'Office', 6500.00, 8),
('Notebook', 'Office', 120.00, 100),
('Printer', 'Electronics', 7500.00, 10)

select * from products

-- 44. Insert 6 rows into orders, linked to different customers, with different order dates and statuses (e.g. pending, shipped, delivered, cancelled).
insert into orders
    (customer_id, order_date, status)
values
(1, '2024-05-01', 'pending'),
(2, '2024-05-03', 'shipped'),
(3, '2024-05-05', 'delivered'),
(4, '2024-05-08', 'delivered'),
(5, '2024-05-12', 'cancelled'),
(6, '2024-05-15', 'pending')

select * from orders

-- 45. Insert 12 rows into order_items, spread across the 6 orders, referencing real product IDs.
insert into order_items
    (order_id, product_id, quantity, unit_price)
values
(1, 1, 1, 35000.00),
(1, 4, 2, 850.00),
(2, 2, 1, 18000.00),
(2, 5, 2, 450.00),
(3, 3, 1, 12000.00),
(3, 6, 1, 1500.00),
(4, 7, 2, 4500.00),
(4, 9, 5, 120.00),
(5, 8, 1, 6500.00),
(5, 10, 1, 7500.00),
(6, 1, 1, 35000.00),
(6, 6, 2, 1500.00)

select * from order_items

-- 46. Try inserting an employee row with a duplicate email that already exists, and confirm the database rejects it. 
insert into employees
    (first_name, last_name, email, hire_date, salary, department_id)
values
('Test', 'Employee', 'ahmed.hassan@company.com', '2024-08-01', 9000.00, 1)

-- The database rejects it --> CONSTRAINT unique_employees_email UNIQUE (email) in section 3

-- 47. Insert multiple rows into departments in a single statement (a multi-row INSERT) for two new departments: Finance and Legal.
insert into departments (department_name)
values ('Finance'), ('Legal')

select * from departments
