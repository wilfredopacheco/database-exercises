use employees;

SELECT DISTINCT title FROM titles;

-- select distinct last_name from employees where last_name like 'E%E' group by last_name order by emp_no ASC;

SELECT first_name, last_name
FROM employees
where last_name like 'E%E'
group by first_name, last_name;

select last_name, count(*)
from employees
where last_name
like '%q%' and last_name NOT LIKE '%qu%'
group by last_name
order by count(*);


select count(*), gender
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
group by gender
order by count(*) ASC, gender;
