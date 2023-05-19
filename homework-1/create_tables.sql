-- SQL-команды для создания таблиц

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
 	first_name VARCHAR(50),
 	last_name VARCHAR(50),
	title VARCHAR(50),
 	birth_date DATE,
	notes TEXT
);

CREATE TABLE customers_data (
 	customer_id VARCHAR(5) PRIMARY KEY,
 	company_name VARCHAR(50),
	contact_name VARCHAR(50)
);

CREATE TABLE order_data (
    order_id INT PRIMARY KEY,
	customer_id VARCHAR(5),
	employee_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers_data(customer_id),
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    order_date DATE,
    ship_city VARCHAR(50)
);