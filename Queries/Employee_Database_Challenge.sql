SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_employee AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no)

SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
INTO sales_retirement
FROM current_emp as ce
INNER JOIN dept_employee as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no )
WHERE dept_name IN ('Sales');

SELECT * FROM sales_retirement


SELECT ce.emp_no,
	ce.first_name,
	ce.last_name,
	d.dept_name
INTO sales_development_retirement
FROM current_emp as ce
INNER JOIN dept_employee as de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments as d
ON (de.dept_no = d.dept_no )
WHERE dept_name IN ('Sales', 'Development')
ORDER BY dept_name;

SELECT * FROM sales_development_retirement

SELECT COUNT(emp_no), dept_name
FROM sales_development_retirement
GROUP BY dept_name
ORDER BY count DESC; 

SELECT e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no ASC, to_date DESC;

SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;
