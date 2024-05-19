-- Drop table if exists
DROP TABLE IF EXISTS departments;

DROP TABLE IF EXISTS dept_emp;

DROP TABLE IF EXISTS dept_manager;

DROP TABLE IF EXISTS title;

DROP TABLE IF EXISTS employees;

DROP TABLE IF EXISTS salary;

-- Create new tables to import data
CREATE TABLE departments (
	dept_no	VARCHAR NOT NULL PRIMARY KEY, 
	dept_name VARCHAR NOT NULL
);

-- Create new table to import data
CREATE TABLE dept_emp (
	emp_no	INT NOT NULL, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, dept_no)
);


-- Create new table to import data
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL, 
	emp_no	INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	PRIMARY KEY (emp_no, dept_no)
);


-- Create new table to import data
CREATE TABLE title (
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title TEXT NOT NULL
);

-- Create new table to import data
CREATE TABLE employees (
	emp_no	INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	sex TEXT NOT NULL,
	hire_date VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
);

-- Create new table to import data
CREATE TABLE salaries (
	emp_no	INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);