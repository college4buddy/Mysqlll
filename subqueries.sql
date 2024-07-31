-- subqueries
-- It will only display table of empployee_demographic.
select * 
from employee_demographics;
-- It will only display the table of employee_salary.
select * from employee_salary;

-- in this we are going to display dept id 1 in employee salary where
-- it situated in employee salary that why we use subqueries. 
select * from employee_demographics
where employee_id in  (
select employee_id from employee_salary
where dept_id=1);


-- we are using group by operator . group use when we use aggrgate function at same line
-- withouth creating subqueries. It will display average salary .
select first_name ,salary, 
(select avg(salary) from employee_salary)
from employee_salary
group by first_name ,salary;


select * from employee_demographics;

-- we are displaying gender and aggregate function .
select gender , avg(age), max(age),min(age)
from employee_demographics
group by gender;


