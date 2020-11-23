# sql-challenge
Presented by Shadia Duery
Submission Date: 11/23/2020

I was tasked to create a database for a company on PostgreSQL for the company to manage its employee information.

I was give 6 tables containing data:
1) employees info
2) salaries
3) titles
4) departments information
5) department employees
6) department managers

- I created a Entity Relationship Diagram (ERD), identifying the order of the tables
- Using the ERD I created created the database on PostgrSQL. 
- I created two Schemas to organize the data,1) to hold the Employee related information (Employee_info) and 2) to hold the Department Related information (Department_info) 
- Using SQL code I created first the schemas and then the tables inside of the schemas, then I imported the data into the tables
- Using the ERD I created the tables in a specific order, making sure the table with the most connections was created first

Then I performed the following queries on the database:

1) List the following details of each employee: employee number, last name, first name, sex, and salary.

2) List first name, last name, and hire date for employees who were hired in 1986.

3) List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4) List the department of each employee with the following information: employee number, last name, first name, and department name.

5) List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6) List all employees in the Sales department, including their employee number, last name, first name, and department name.

7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

The code to create the database and for each query can be found inside the folder "Database_creating_and_querying_code

After that I Imported the following SQL tables (Employee, title, salary) into Pandas using SQLAlchemy

I create a histogram to visualize the most common salary ranges for employees.

Then I create a bar chart of average salary by title.

This is when I relized the data was potentially fake, the people with the titles that were supposed to get hired paid were the lower paid and viceversa.

Then I checked my information into the database, and my name and last name were "April Foolsday". 

My boss had treaked me!!