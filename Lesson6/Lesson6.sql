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



Select *--last_name
     -- ,department_id
     -- ,salary
from employees 
where department_id=60
or department_id=80
and salary > 10000;
  


Select *--last_name
     -- ,department_id
     -- ,salary
from employees 
where department_id=60
or department_id=80
and salary > 10000;


Select* 
from employees
where job_id ='SA_REP'
or job_id ='SA_MAN'
and phone_number like'5%';



Select* 
from employees
where (job_id ='SA_REP'
or job_id ='SA_MAN')
and phone_number like'0%';


Select* 
from employees
where job_id ='SA_REP'
or job_id ='SA_MAN'
and phone_number like'5%';


Select* 
from employees
where (job_id ='SA_REP'
or job_id ='SA_MAN')
and phone_number like'0%'
Order by salary Desc;


Select last_name || first_name AS fullname
      ,salary as salariu
from employees
--Order by fullname Desc;
Order by salariu, fullname;


Select  salary as salariu
       last_name || first_name AS fullname
     -- ,salary as salariu
from employees
--Order by fullname Desc;
Order by 1, 2;


Select salary as salariu
       ,last_name || first_name AS fullname     
from employees
--Order by fullname Desc;
Order by 1 desc, 2 desc;


Select * 
from employees
order by employee_id --desc
Fetch first 10 rows only;



Select * 
from employees
order by salary --desc
--Offset 2 rows Fetch first 8 rows  only ;
--Offset 1 rows 
Fetch first 18 rows  with ties ;



Select * 
from employees
order by salary --desc
--Offset 2 rows Fetch first 8 rows  only ;
Offset 1 row Fetch Next 18 rows  with ties ;


Select * 
from employees
Where employee_id = &employee;
--Where employee_id = 101



Select * 
from employees
order by employee_id --desc
Fetch first 10 rows only;













