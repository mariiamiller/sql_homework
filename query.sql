--1
SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.gender,
	salaries.salary
FROM employees 
INNER JOIN salaries ON
	employees.emp_no = salaries.emp_no
ORDER BY emp_no;
--2
SELECT 
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.hire_date
FROM employees
WHERE hire_date >= '1986-01-01' and hire_date < '1987-01-01';
--3
SELECT
	dept_manager.dept_no,
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	dept_manager.from_date,
	dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON
	dept_manager.emp_no = employees.emp_no;
--4
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
	INNER JOIN departments ON
		dept_emp.dept_no = departments.dept_no;
--5
SELECT
	employees.first_name,
	employees.last_name
FROM employees
WHERE
	employees.first_name LIKE 'Hercules' AND
	employees.last_name LIKE 'B%';
--6
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
	INNER JOIN departments ON
		dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';
--7
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM employees
INNER JOIN dept_emp ON
	employees.emp_no = dept_emp.emp_no
	INNER JOIN departments ON
		dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
--8
SELECT
	employees.last_name,
	count(employees.last_name)
FROM
	employees
GROUP BY
	employees.last_name
ORDER BY
	COUNT(employees.last_name) DESC