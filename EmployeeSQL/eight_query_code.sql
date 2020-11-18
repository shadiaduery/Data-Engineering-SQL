--1) List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
	FROM employee_info.employees
		JOIN employee_info.salaries ON employees.emp_no = salaries.emp_no;
		
--2) List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
	FROM employee_info.employees
	WHERE hire_date >= '1986-01-01'AND hire_date <= '1987-01-01';
		
--3) List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.		
SELECT dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
	FROM employee_info.employees
		JOIN department_info.dept_manager ON employees.emp_no = dept_manager.emp_no
		JOIN department_info.departments ON departments.dept_no = dept_manager.dept_no;	
		
--4) List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employee_info.employees
		JOIN department_info.dept_emp ON employees.emp_no = dept_emp.emp_no
		JOIN department_info.departments ON departments.dept_no = dept_emp.dept_no;	
		
--5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees.first_name, employees.last_name, employees.sex
	FROM employee_info.employees
	WHERE employees.first_name = 'Hercules' AND employees.last_name = 'B%';