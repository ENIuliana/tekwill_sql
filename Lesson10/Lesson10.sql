Insert Into departments(department_id,department_name,manager_id,location_id)
Values('280','Public Relationship',100,1700);



Insert Into departments(department_id,department_name)
Values('281','Public Relationship');


Insert Into departments(department_id,department_name,manager_id,location_id)
Values('282','Public Relationship',null,null);


Insert Into departments
Values('283','Public Relationship',null,null);


Insert Into departments (department_name,manager_id,location_id)
Values('Public Relationship',null,null);

Insert Into employees(employee_id,first_name,last_name,email,job_id,salary,hire_date,commission_pct,manager_id,department_id)
Values(210,'Popovici','Iuliana','julfkdkzm;v','IT_PROG',1000,sysdate,0.35,100,80);

Insert Into employees(employee_id,first_name,last_name,email,job_id,salary,hire_date,commission_pct,manager_id,department_id)
Values(211,'Popovici','Iuliana','dyjuk;v','IT_PROG',1000,to_date('29.10.2018','DD.MM.YYYY'),0.35,100,80);



Insert Into departments
Values('286','Name_3',null,null);

Insert Into departments
Values(&epartment_id,'&department_name',null,null);

Select * 
From sales_reps;

Create table sales_reps 
(ID NUMBER(6) ,   
NAME VARCHAR2(25), 
SALARY NUMBER(8,2),  
COMMISSION_PCT NUMBER(2,2));


Insert into sales_reps
(Select employee_id
      ,last_name
      ,salary
      ,commission_pct 
From employees);


-- Check if we can connect client to the DB







Select * 
from sales_reps;

Select *
from departments
order by 1;

Select *--max(employee_id)
from employees;




Desc departments;



Select * 
from employees
where employee_id=113;

Select *
from departments;


Update employees 
Set department_id = 50
   ,first_name= 'Luisa'
   ,phone_number='515.124.4540'
where employee_id=113;

Select job_id
      ,salary
from employees
where employee_id=205;

Update employees 
Set job_id = 'AC_MGR'
   ,salary = 12008
where employee_id=113;


Update employees 
Set (job_id,salary)= (Select job_id
                            ,salary
                        from employees
                        where employee_id=205)
where employee_id=113;                       


Insert Into copy_emp
Select * 
From employees;


Select * 
from copy_emp;


Update copy_emp
Set department_id = (Select department_id
                     From employees
                     where employee_id=100)
Where job_id = (Select job_id
                From employees
                where employee_id=200);


Update copy_emp
Set department_id = (Select department_id
                     From employees
                     where employee_id=100)
Where job_id = (Select job_id
                From employees
                where employee_id=130);
--130

Select *
From copy_emp
where job_id='ST_CLERK';
--empno=130;

--- Update using joins ?
UPDATE table1 SET table1.value = (SELECT table2.CODE
                                  FROM table2 
                                  WHERE table1.value = table2.DESC)

Update a
from 
inner join employees b
on a.empno = b.employee_id
Set a.department_id=b.department_id;



Select count(*)
From copy_emp
where empno<=206;

Delete From copy_emp
where empno > 206;


Delete From copy_emp;

Select * 
From copy_emp;

Select * 
from employees
where department_id in(280,281,282,283,70);

Delete from employees
where department_id in(280,281,282,283,70);

Delete from copy_emp
where department_id in(Select department_id
                        From departments
                        where lower(department_name) like'%public%');


Select * 
from copy_emp;

Truncate table copy_emp;
Delete From copy_emp;



Select * 
from copy_emp
where department_id in(280,281,282,283,70);


Start transaction
Delete from copy_emp
where department_id in(280,281,282,283,70);

rollback;








