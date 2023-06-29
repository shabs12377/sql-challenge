SELECT * 
FROM "titles";

SELECT *
FROM "employees"

--List the employee number, last name, first name, sex, and salary of each employee. 

SELECT emp.emp_no,
		emp.last_name,
		emp.first_name,
		emp.sex,
		sal.salary
FROM employees as emp
	INNER JOIN salaries as sal
	on(emp.emp_no=sal.emp_no)
order by emp.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986

SELECT 
		emp.first_name,
		emp.last_name,
		emp.hire_date
		
FROM employees as emp
WHERE emp.hire_date between '1986-01-01' and '1986-12-31'

--List the manager of each department along with their department number, department name, employee number, last name, and first name.

SELECT 
	 dm.dept_no		As "department number",
	 d.dept_name	As "department name",
	 dm.emp_no		As "employee number",
	 e.last_name,
	 e.first_name

FROM dept_manager dm
INNER JOIN Departments d on dm.dept_no=d.dept_no
INNER JOIN employees e on dm.emp_no=e.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B

SELECT
		emp.first_name,
		emp.last_name,
		emp.sex

FROM employees emp

WHERE LOWER(emp.first_name)='hercules'
and lower(emp.last_name) like 'b%' 
	
--Group BY

Select Sex, Count(*)
FROM Employees
GROUP BY Sex;

--Overall Count

Select  Count(*)
FROM Employees

--Group BY
Select Sex, last_name, Count(*)
FROM Employees
GROUP BY Sex, last_name
HAVING Count(*)>100;

--List each employee in the Sales department, including their employee number, last name, and first name.


SELECT
	emp.*,
	d.dept_name
FROM (employees emp
INNER JOIN dept_emp de on emp.emp_no=de."emp-no")
INNER JOIN departments d		ON de.dept_no=d.dept_no
WHERE lower(d.dept_name) = 'sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT
	emp.emp_no,
	emp.last_name,
	emp.first_name,
	d.dept_name

FROM departments as d
INNER JOIN dept_emp on d.dept_no=dept_emp.dept_no 
INNER JOIN employees as emp	on dept_emp.emp_no = emp.emp_no
WHERE (d.dept_name) = 'Sales' 
or (d.dept_name) = 'Development'
;

-- SELECT *
-- FROM departments
-- INNER JOIN dept_emp
-- ON departments.field_name = dept_emp.field_name
-- INNER JOIN employees
-- ON dept_emp.field_name = employees.field_name

-- SELECT *
-- FROM table1
-- INNER JOIN table2
-- ON table1.field_name = table2.field_name
-- INNER JOIN table3
-- ON table2.field_name = table3.field_name

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name

