--EmployeeSQL has six table, after creating a schema diagram I decided to create two schemas to group the data

--The First Schema's name will be employee_info
Create schema employee_info;

--The Second Schema's name will be employee_info
Create schema department_info;

--Schema employee_info will contain three tables: employees, titles, salaries
-- Below code to create table employees
CREATE TABLE employee_info.employees (
 	emp_no int Primary Key,
 	emp_title_id varchar(5)NOT NULL,
	birth_date date NOT NUll,
	first_name varchar(40)NOT NULL,
	last_name varchar(40)NOT NULL,
	sex varchar(1),
	hire_date date NOT NULL
);

Drop table employee_info.employees;

SELECT *
	FROM employee_info.employees;
	
-- Below code to create table salaries
CREATE TABLE employee_info.salaries (
 	emp_no int,
 	salary int
);

SELECT *
	FROM employee_info.salaries;
	
-- Below code to create table titles
CREATE TABLE employee_info.titles (
 	title_id varchar(5),
 	title varchar(25)
);


SELECT *
	FROM employee_info.titles;

--Schema department_info will contain three tables: departments, dept_emp, dept_manager
-- Below code to create table departments
CREATE TABLE department_info.departments (
 	dept_no varchar(4) Primary Key,
 	dept_name varchar(25)
);

Drop Table department_info.departments;

SELECT *
	FROM department_info.departments;

-- Below code to create table dept_emp
CREATE TABLE department_info.dept_emp (
 	emp_no int,
 	dept_no varchar(4)
);

SELECT *
	FROM department_info.dept_emp;
	
-- Below code to create table dept_manager
CREATE TABLE department_info.dept_manager (
 	dept_no varchar(4),
	emp_no int
);

SELECT *
	FROM department_info.dept_manager;
	
