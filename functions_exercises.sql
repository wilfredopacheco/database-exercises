USE employees;

-- select *
-- from employees
-- where first_name IN ('Irena', 'Vidya', 'Maya');
-- select * from employees where last_name like 'E%';
-- select * from employees where hire_date between cast('1990-01-01' as date)  and cast('1999-12-31' as date);
-- select * from employees where birth_date like '%-12-25';
-- select * from employees where last_name like '%q%';
--
-- select first_name, last_name
-- from employees
-- where first_name IN ('Irena', 'Vidya', 'Maya')
-- and gender = 'M'
-- order by first_name ASC;
--
-- select first_name, last_name
-- from employees
-- where first_name IN ('Irena', 'Vidya', 'Maya')
-- and gender = 'M'
-- order by first_name ASC, last_name ASC;
--
-- select last_name,first_name from employees where first_name IN ('Irena', 'Vidya', 'Maya') and gender = 'M' order by last_name ASC, first_name ASC;


select CONCAT(first_name,' ', last_name) from employees where last_name like 'E%E' order by emp_no ASC;
-- select * from employees where last_name like 'E%E' order by emp_no DESC;


select CONCAT(first_name, ' ', last_name, ' has been working at the company for ', datediff(curdate(),hire_date), ' days.')
from employees
where hire_date
between cast('1990-01-01' as date)
and cast('1999-12-31' as date)
and birth_date like '%-12-25'
order by birth_date ASC, last_name ASC;

-- select * from employees where last_name like '%q%' and last_name NOT LIKE '%qu%';