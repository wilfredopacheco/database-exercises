USE employees;

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya');
select * from employees where last_name like 'E%';
select * from employees where hire_date between cast('1990-01-01' as date)  and cast('1999-12-31' as date);
select * from employees where birth_date like '%-12-25';
select * from employees where last_name like '%q%';

select *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
and gender = 'M';

select * from employees where last_name like 'E%' or last_name like '%E';
select * from employees where last_name like 'E%E';

select * from employees
where hire_date
between cast('1990-01-01' as date)
and cast('1999-12-31' as date)
and birth_date like '%-12-25';

select * from employees where last_name like '%q%' and last_name NOT LIKE '%qu%';
