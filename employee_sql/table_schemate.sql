--Create table and import departments csv
CREATE TABLE departments (
    dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

--Create table and import dep_emp csv
CREATE TABLE dept_emp(
    emp_no INT NOT NULL,
    dept_no VARCHAR(30) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create table and import dept_manager csv
CREATE TABLE dept_manager(
    dept_no VARCHAR(30) NOT NULL,
    emp_no INT NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create table and import employees csv
CREATE TABLE employees(
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(30) NOT NULL,
    hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--Create table and import salaries csv
CREATE TABLE salaries(
    emp_no INT NOT NULL PRIMARY KEY,
    salary INT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--Create table and import titles csv
CREATE TABLE titles(
    title_id VARCHAR(30) NOT NULL PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
);