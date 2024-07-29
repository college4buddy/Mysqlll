-- string It is descrie as word is string .    
-- char is a,,b,b, c are character value.
-- length is used to carry out number of charcter in word with space include.
select length('Rahul   ');

-- It display length of first_name with arranged in ascending.
select first_name, length(first_name)
 from employee_demographics
 order by 2;
 
 -- Upper it is used to Display letter in Upper case
 select upper('rushi');
 
 -- Lower it is used to display letter in lower case
 select lower('RUSHI');
 
 -- Trim is to remove the spaces from words.
 select trim('                rohit        ');
  
  -- rtrim it is used to removed right space and display only word.
  select rtrim('           abc         ');
  
  -- ltrim it is used to removed left space and display only word.
  select ltrim('           abc   ' );
 
 -- substring it is used to diplay  specific word from where you want it 
 select first_name , right(first_name,2) 
from  employee_demographics;

-- in this we just display month from birth_date
select birth_date,
substring(birth_date,6,2)  as month
from employee_demographics;

-- Replace it is used to replace a character from one character to another character.
select first_name, replace(first_name,'R','M')
 from employee_demographics;
  
  -- Locate is used to find charcter in word.
 select locate('u','rshikeshu');
 
 -- It show in first_name the value Ru is there or not.
 select first_name , locate('Ru',first_name)
 from employee_demographics;
 
 -- concat It combine two words
 -- it display first_name and last_name with space in between first_name and last_name.
 select first_name, last_name,
 concat(first_name, ' ',last_name)  as Common_name
 from employee_demographics;