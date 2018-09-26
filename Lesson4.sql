-- Description for employees table
Select *
from employees;

Select employee_id
     ,first_name
     ,last_name
from employees;


Select first_name
       ,last_name
       ,salary
       ,salary * 1.05 as salary_commission
       ,12*(salary + 300) as annual_salay
       ,12* salary + 300 as test_1
from employees;


Select first_name AS Name_
       ,last_name AS Name_
       ,salary
       ,salary * 1.05 AS salary_commission
       ,12*(salary + 300) AS annual_salay
       ,12* salary + 300 AS test_1
from employees;


Select first_name AS Name_
       ,last_name AS Name_
       ,salary
       ,salary * 1.05 AS "salary commission"
       ,12*(salary + 300) AS "annual salay"
       ,12* salary + 300 AS "test 1"
from employees;


--My first select
Select first_name AS Name_
       ,last_name AS Name_1
      -- ,salary
       ,salary * 1.05 AS "salary commission"
       ,12*(salary + 300) AS "annual salay"
       ,12* salary + 300 AS "test 1"
from employees;

-- comment for 1 row

/*
Test Multiple row comment 
Select first_name AS Name_
      -- ,last_name AS Name_1
      --,salary
       ,salary * 1.05 AS "salary commission"
       ,12*(salary + 300) AS "annual salay"
       ,12* salary + 300 AS "test 1"
from employees
*/


Select First_name ||'   ' || last_name AS FullName
    ,First_name ||'_' || last_name AS Name
    ,salary || 'e'
    ,100 ||' '|| salary 
    ,'Test Concatenate  ' || hire_date
From employees;


Select DISTINCT --first_name
     last_name
    ,salary
    ,hire_date
From employees;


Select DISTINCT *
From employees;


Select * 
from locations;


Select distinct job_id
From employees;

Select * 
from employees;


Describe employees;

Des employees;
