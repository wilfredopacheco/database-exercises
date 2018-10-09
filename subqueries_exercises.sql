use employees;

SELECT *
FROM employees
WHERE hire_date IN (
                SELECT hire_date
                FROM employees
                WHERE emp_no = '101010'
                );

SELECT *
FROM titles
WHERE emp_no IN (
                SELECT emp_no
                FROM employees
                WHERE first_name = 'Aamod'
                );


SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
                SELECT emp_no
                FROM dept_manager
                WHERE to_date > now()
                )
AND gender = 'F';

-- bonus

SELECT dept_name
FROM departments AS d
WHERE dept_no IN (
                SELECT dept_no
                FROM dept_manager AS d
                JOIN employees de ON de.emp_no = d.emp_no
                WHERE de.gender = 'F'
                AND d.to_date > now()
                );

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
                SELECT emp_no
                FROM salaries
                WHERE salary in (
                    select max(salary)
                    from salaries
                    )
                );