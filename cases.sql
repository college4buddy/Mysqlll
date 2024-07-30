-- Case Statement
-- in this below operation we have done the age is less than it should be minner
-- those age is between 18 to 30 it show adult.
select first_name,last_name,
case 
    when age <=18 then 'Minors'
    when age between 18 and 30 then 'Adult'
    end as age_distribued
from employee_demographics;
-- In this  we just increment the salary on the base of 
-- their salary those salary is less than 50000 it incremet  by 0.5
-- those salary is greater than 50000 it increment by 0.7 %.

-- <50000 = 5%
-- >50000 = 7%
select first_name , last_name ,  salary ,
case when salary <50000 then salary * 1.05 
      when salary >50000 then salary * 1.07
      end as new_salary
 from employee_salary;