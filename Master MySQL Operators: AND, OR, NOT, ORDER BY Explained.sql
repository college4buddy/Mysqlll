# ORDER BY default is Ascending
# AND  1 ,1 = 1
# OR  0,1 / 1,0=1
# NOT   true vaule convert into false


select * from employee_demographics
order by first_name;



select * from employee_salary
order by last_name desc;




select * from company_and_rec.employee_demographics
where age =20 and gender ='Male';


select * from company_and_rec.employee_demographics
where age >20 or (gender ='Female');



select * from company_and_rec.employee_salary
where not salary = 50000;


