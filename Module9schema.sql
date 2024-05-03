-- Drop table if exists
DROP TABLE IF EXISTS departments;

DROP TABLE IF EXISTS dept_emp;

DROP TABLE IF EXISTS dept_manager;

DROP TABLE IF EXISTS title;

DROP TABLE IF EXISTS employees;

DROP TABLE IF EXISTS salary;

-- Create new tables to import data
CREATE TABLE departments (
	dept_no	VARCHAR(10) NOT NULL, 
	dept_name TEXT NOT NULL PRIMARY KEY
);

-- Create new table to import data
CREATE TABLE dept_emp (
	emp_no	int NOT NULL, 
	dept_no VARCHAR (10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no)
);


-- Create new table to import data
CREATE TABLE dept_manager (
	dept_no VARCHAR (20) NOT NULL, 
	emp_no	INT PRIMARY KEY
);


-- Create new table to import data
CREATE TABLE title (
	title_id VARCHAR (20) NOT NULL PRIMARY KEY,
	title TEXT NOT NULL
);

-- Create new table to import data
CREATE TABLE employees (
	emp_no	INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (20) NOT NULL,
	birth_date VARCHAR (20) NOT NULL,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	sex TEXT NOT NULL,
	hire_date VARCHAR(20) NOT NULL
);

-- Create new table to import data
CREATE TABLE salary (
	emp_no	INT NOT NULL PRIMARY KEY,
	salary INT NOT NULL
);