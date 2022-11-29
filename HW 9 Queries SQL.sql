
--List the following details of each employee: employee number, last name, first name, sex, and salary.

Select
e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM employees as e
LEFT JOIN salaries as s on e.emp_no = s.emp_no
order by e.emp_no;


--List first name, last name, and hire date for employees who were hired in 1986.
Select 
first_name,
last_name,
hire_date
FROM Employees
where hire_date between '1986-01-01' and '1986-12-31'
order by hire_date;

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

Select 
dm.dept_no,
d.dept_name,
e.last_name,
e.first_name
From dept_manager as dm
inner join departments as d on dm.dept_no = d.dept_no
inner join employees as e on dm.emp_no = e.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
From employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
order by e.emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT
first_name,
last_name,
sex
from employees as e
where first_name = 'Hercules'
and last_name like 'B%';

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
From employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales'
order by e.emp_no;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
e.emp_no,
e.last_name,
e.first_name,
d.dept_name
From employees as e
inner join dept_emp as de on e.emp_no = de.emp_no
inner join departments as d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'
order by e.emp_no;

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

Select 
last_name, 
Count(last_name)
FROM employees
Group by last_name
Order by count(last_name) DESC;