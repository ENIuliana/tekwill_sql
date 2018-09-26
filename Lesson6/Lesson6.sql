Select 'Test1' || 'It's Test'
From dual


Select  'Test1 '|| q'[It's Test]'
       ,'Test1 '|| q'{It's Test}'
       ,'Test1 '|| q'<It's Test>'
from dual;

Select employee_id
      ,last_name
      ,job_id
      ,department_id
From employees
Where department_id=90;

Select * 
From employees;

Select * from departments;


Select * 
From employees
Where last_name = ' King';


Select distinct first_name 
from employees;

Select * 
from employees
where hire_date='09-JUL-14';

Select * 
From employees
Where salary <=3000;

Select * 
From employees
Where salary >= 3000;


Select * 
From employees
Where salary != 9000; -- <>   => != is not that value 

Select * 
from employees
where salary between 9000 and 17000;



Select * 
from employees
where hire_date between '17-JUN-11' and '31-Dec-11';


Select * 
from employees
where manager_id IN(100,102,200);

Select * 
from employees
where first_name IN('Diana','Cutis','Ellen');

Select * 
from employees
where hire_date IN('16-NOV-15','03-JAN-14','24-MAR-14');


Select * 
from employees
Where first_name LIKE'E%';


Select * 
from employees
Where first_name LIKE'%a';


Select * 
from employees
--Where first_name LIKE'__e%';
Where first_name LIKE'%e%';


Select * 
from employees
Where job_id LIKE'___%';


Select * 
from employees
where commission_pct is not null;
--where commission_pct is null;
--where commission_pct != null    wrrong 



Select * 
From employees
where salary>=10000
and job_id like'%MAN%'
and commission_pct is not null;
--and department_id <>80;


Select * 
from employees 
where salary>=10000
or job_id like'%MAN%';