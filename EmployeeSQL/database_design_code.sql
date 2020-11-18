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
	
--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
	FROM employee_info.employees
		JOIN employee_info.salaries ON employees.emp_no = salaries.emp_no;
		
--List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, hire_date
	FROM employee_info.employees
	WHERE  hire_date = (SELECT (hire_date > 1986-01-01) FROM employee_info.employees);
		WHERE  hire_date >=( 1986-01-01 < 1987-01-01 FROM employee_info.employees); 
		
--List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.		
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
	FROM employee_info.employees
		JOIN department_info.dept_manager ON employees.emp_no = dept_manager.emp_no
		JOIN department_info.departments ON departments.dept_no = dept_manager.dept_no;	
		
--List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employee_info.employees
		JOIN department_info.dept_emp ON employees.emp_no = dept_emp.emp_no
		JOIN department_info.departments ON departments.dept_no = dept_emp.dept_no;	
		
