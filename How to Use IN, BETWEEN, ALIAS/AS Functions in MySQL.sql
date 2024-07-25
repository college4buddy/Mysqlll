#IN : It allow you to specify multiple values in where clause
#Between : This operator values written in given range 
#alias : Alias is used to give temporary name.

-- it will display only the salary having 5000,25000,2000.
select * from employee_salary
where salary in (50000,25000,20000);

-- it display first name with specific name will be displayed.
select * from employee_salary
where first_name in ('laxman','don','rushi');

-- it show the age between 10 and 20.
select * from employee_demographics
where age  between 10 and 20;

-- it show the age is not between 10 to 20 because of not function .
select * from employee_demographics
where age  not between 10 and 20;

-- it is used to temporary chnge the column name into other 
-- like given below first_name as name
select first_name as name  from employee_demographics;

