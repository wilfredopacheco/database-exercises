use employees;

-- current managers list
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY d.dept_name;

-- current managers list that are female
SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
JOIN dept_manager as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND e.gender = 'F'
ORDER BY d.dept_name;

-- SELECT t.title, COUNT(t.title) as 'Count'
-- FROM titles as t
-- JOIN dept_emp de as de
-- ON de.emp_no = t.emp_no;
-- JOIN departments as d
-- ON d.dept_no = de.dept_no
-- WHERE t.to_date > now()
-- AND de.to_date > now()
-- AND d.dept_name = 'Customer Service'
-- GROUP BY t.title;


SELECT d.dept_name 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM employees as e
JOIN dept_manager as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
JOIN salaries s ON s.emp_no = e.emp_no
WHERE de.to_date = '9999-01-01'
AND s.to_date > now()
ORDER BY d.dept_name;

