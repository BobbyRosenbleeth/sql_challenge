--Question 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
INNER JOIN salaries as s ON e.emp_no=s.emp_no; 

--Question 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('Year',  hire_date)=1986;

--Question 3
SELECT d.dept_no, dep.dept_name, d.emp_no, e.last_name, e.first_name
FROM dept_manager as d
INNER JOIN departments as dept ON d.dept_no=dept.dept_no
INNER JOIN employees as e ON d.emp_no=e.emp_no;

--Question 4
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
INNER JOIN employees as e ON de.emp_no=e.emp_no
INNER JOIN departments as d ON de.dept_no=d.dept_no;

--Question 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and SUBSTRING(last_name, 1, 1) = 'B'

--Question 6
SELECT e.emp_no, e.first_name, e.last_name
FROM employees as e
INNER JOIN dept_emp as d ON e.emp_no=d.emp_no; 
WHERE d.dept_no = 'd007'

--Question 7
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees as e
INNER JOIN dept_emp as de ON e.emp_no=de.emp_no;
INNER JOIN departments as d ON de.dept_no=d.dept_no 
WHERE d.dept_name = 'Sales' or d.dept_name = 'Development';

--Question 8
SELECT count(last_name)
FROM employees
ORDER BY count(last_name) DESC;