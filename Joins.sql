#JOIN 
select * from employee_demographics;

select * from employee_salary;

select * from  employee_demographics as dem
join employee_salary as sal
on dem.employee_id=sal.employee_id;

select sal.employee_id,age,occupation 
from  employee_demographics as dem
  join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- Outer join Two types left join and right join
select * 
from  employee_demographics as dem
 left join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- Right join
select * 
from  employee_demographics as dem
 right join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- self join
select 
emp1.employee_id as DEVA,
emp1.first_name as deva1,
emp1.last_name as deva2,
emp2.employee_id as ID,
emp2.first_name as name,
emp2.last_name as last
from employee_salary as emp1
join employee_salary as emp2
on emp1.employee_id +1 =emp2.employee_id;