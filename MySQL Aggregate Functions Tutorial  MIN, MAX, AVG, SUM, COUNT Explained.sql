#Aggrate Function it is used for calculation set of 
#value return to a single value
# Min() return smallest value
# max() return largest value
# Avg() return average value from numerical unit
#count() return number of rows
#sum() return total sum 
-- It is use to calculate minmum value in salary

select min(salary) from employee_salary;
 
-- it is use to describe name , id  and min salary of person with full detail
SELECT * FROM employee_salary
WHERE salary = (SELECT MIN(salary) FROM employee_salary);

-- It is use to calculate maximum number in the salary . It only show salary
select max(salary) from employee_salary;

-- It is used to show maximum salary with full details.
select * from employee_salary
where salary=(select max(salary) from employee_salary);

-- Count function is to count the number of rows in salary.
select count(salary) from employee_salary; 

-- Count in distinct salary is to count differnet salary they are not same.
select count(distinct salary) from employee_salary;

-- Sum is use to calculate total no of salary in employee_salary.
select sum(salary) from employee_salary;

-- Average function is to use average of salary means  =addition of total not of salary / divide by no of rows  
select avg(salary) from employee_salary;


select avg(salary) from employee_salary;
