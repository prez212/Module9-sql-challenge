SELECT * FROM employees;
SELECT emp.first_name, tl.title
FROM employees as emp
INNER JOIN title as tl ON emp.emp_title_id = tl.title_id

--Data Analysis Q1: List the employee number, last name, first name, sex, and salary of each employee.
SELECT emp.first_name, emp.last_name, emp.sex, sal.salary
FROM employees as emp
INNER JOIN salary as sal ON emp.emp_no = sal.emp_no

--Data Analysis Q2: List the first name, last name, and hire date for the employees who were hired in 1986,
SELECT first_name, last_name, hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31' 

--Data Analysis Q3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT emp.first_name AS manager_first_name, 
	emp.last_name AS manager_last_name, 
	departments.dept_no AS depnu,
	departments.dept_name AS department_name, 
	dept_manager.emp_no AS mgr_emp_no
FROM employees AS emp
INNER JOIN dept_manager ON emp.emp_no = dept_manager.emp_no
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no

--Data Analysis Q4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no AS employee_number,
	e.last_name,
	e.first_name,
	de.dept_no as department_number,
	d.dept_name as deptartment_name
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.de.dept_no = d.dept_no

--Data Analysis Q5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

--Data Analysis Q6: List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no AS employee_number, e. last_name, e. first_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS depts ON de.dept_no = depts.dept_no
WHERE depts.dept_name = 'Sales';

----Data Analysis Q7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no AS employee_number, e. last_name, e. first_name,
	d.dept_name AS department_name
FROM employees AS e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

--Data Analysis Q8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name,
COUNT (*) AS frequency
FROM employees
GROUP BY  last_name
ORDER BY frequency DESC, last_name