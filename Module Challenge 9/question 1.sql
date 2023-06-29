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
	 dept_manager.dept_no,
	 departments.dept_name,
	 dept_manager.emp_no,
	 employees.last_name,
	 employees.first_name

FROM dept_manager 
INNER JOIN Departments on dept_manager.dept_no=Departments.dept_no
INNER JOIN employees on dept_manager.emp_no=employees.emp_no






	
