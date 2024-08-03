-- windows function it is use fro calculation purpose
-- Aggregate function sum() , avg() , min() , max() ,count().
select * from employee_demographics;

select * from employee_salary;
-- Normal method
 -- In this method the avg salary dont show when we use more column.
select  dem.first_name , dem.last_name, gender ,avg(salary) 
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id
group by dem.first_name , dem.last_name, gender;



-- windows function 
-- over function is used in 
-- partion by gennder means it descibe the avg sal as per the gender male and female having different salary.
select dem.first_name, dem.last_name, gender , avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;


-- sum It is use to calculate the current sum and add the above or previous sum in this method
select dem.first_name, dem.last_name, gender , salary,
sum(salary) over(partition by  gender order by dem.employee_id) as increment
from employee_demographics dem
join employee_salary sal
on dem.employee_id = sal.employee_id;




select dem.employee_id,  dem.first_name , dem.last_name, gender , 
salary,
row_number () over()
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id;



-- Rank number it describe tha same rank having same value in numberical  
-- dense rank it describe the same rank having same value but above number display down
select dem.employee_id,  dem.first_name , dem.last_name, gender , 
salary,
rank () over( partition by gender order by salary desc) as rank1,
dense_rank() over( partition by gender order by salary desc) as rank2
from employee_demographics dem
join employee_salary sal
on dem.employee_id=sal.employee_id;


