#union It is used to combine two table.
# union consist distinct value or different value from 2 table.
#union all consist duplicate with same name or employee_id.

-- it will describe union differenet name and last_name or same name from both table
select first_name, last_name
from employee_demographics
union 
select first_name, last_name
from employee_salary;

-- in this we describe data in first_name and last_name with duplicate value.
select first_name, last_name
from employee_demographics
union all
select first_name, last_name
from employee_salary;

-- it wil describe first_name and last_name with condition age  is greater than 24 
-- and salary is greater than 60000 in different table the condition is on. 
select first_name, last_name , 'old' as label
from employee_demographics
where age > 24
union all
select first_name, last_name , 'Highly_Paid'
from employee_salary
where salary > 60000;

-- we use order by to asssign operator should be ascending or descending order where
-- conditoin match and show it .
#order by
select first_name , last_name 
from employee_demographics
where first_name='Rushi'
union all
select first_name, last_name
from employee_salary
where first_name ='Don'
order by first_name desc;
