Select * 
from employees
where hire_date -->'29-JAN-13'
                >(Select hire_date
                  From employees
                  where last_name ='Davies');
                  
Select * 
from employees
where hire_date -->'29-JAN-13'
                in(Select hire_date
                  From employees
                  where first_name ='Peter');     
                  
Select * 
from employees
where hire_date >(Select hire_date--,department_id
                  From employees
                  where first_name ='Peter');    
                  
                  

Select * 
from  employees 
where job_id = (Select job_id 
                From employees
                where last_name ='Taylor'
                and first_name = 'Winston')
and salary >(Select salary 
             From employees
             where last_name ='Taylor'
             and first_name = 'Winston');
             
             
                        
Select * 
From employees
where salary <= (Select --MIN(Salary)
                       AVG(Salary)
                       --Max(salary)
               From employees
               where department_id=80)
and department_id = 80;       


Select department_id
      ,Min(Salary)
From employees
Group by department_id
Having Min(salary)>(Select Min(salary)
                    From employees
                    where department_id=50);
             
Select Min(salary)
From employees
where department_id=80;        

Select *--department_name 
from departments a
left join employees b
on a.department_id=b.department_id
where b.employee_id is null;


Select department_name 
      ,Count(*)
      ,Count(employee_id)
from departments a
left join employees b
on a.department_id=b.department_id
group by department_name
order by 2;



Select min(salary)
From employees
group by department_id;

Select department_id
      ,min(salary)
From employees
group by department_id;


Select * 
from employees
where salary in(Select min(salary)
               From employees
               Group by department_id);
               
               
     
Select * 
from employees 
where job_id =(Select job_id 
               from jobs
               where job_title = 'Architect'
                --where job_title like 'Arc%';
               );
               
 
Select * 
from employees
where salary <= ANY(Select salary
                   From employees
                   where job_id='IT_PROG')
and job_id <>'IT_PROG';

Select * from jobs
where job_id='IT_PROG';


Select * 
from employees
where salary <= ALL(Select salary
                   From employees
                   where job_id='IT_PROG')
and job_id <>'IT_PROG';



Select * 
from employees
where salary <> ALL(Select salary
                   From employees
                   where job_id='IT_PROG')
and job_id <>'IT_PROG';

---NOT with ALL and ANY ?

Select * 
from employees
where salary IN (Select salary
                   From employees
                   where job_id='IT_PROG')
and job_id <>'IT_PROG';

Select * 
from employees 
where (department_id,salary) IN (Select department_id
                                       ,Min(salary)
                                 From employees
                                 group by department_id);

--Daca macar o verificare este falsa(in cazul asta null) atunci tot rezultatul este null
Select * 
from employees
where employee_id not in(Select manager_id
                         from employees
                         --Where manager_id is not null
                         );
                     
                     
                     
 --  Inner Join / Join / Where is the same things
Select b.*
from employees a
join employees b
on a.manager_id=b.employee_id

Select b.*
from employees a
Inner join employees b
on a.manager_id=b.employee_id
                     
                     
Select b.*
from employees a
    ,employees b
where a.manager_id=b.employee_id
    
    
 --  Left Join / Left Outer Join / Where = (+) is the same things
Select b.*
from employees a
left join employees b
on a.manager_id=b.employee_id;

Select b.*
from employees a
Left Outer join employees b
on a.manager_id=b.employee_id;
                     
                     
Select b.*
from employees a
    ,employees b
where a.manager_id=b.employee_id(+);   
    
 --  Right Join / Right Outer Join / Where (+) = is the same things
Select b.*
from employees a
Right join employees b
on a.manager_id=b.employee_id;

Select b.*
from employees a
Right Outer join employees b
on a.manager_id=b.employee_id;
                     
                     
Select b.*
from employees a
    ,employees b
where a.manager_id(+)= b.employee_id; 



Select * 
from retired_emps;

Insert Into retired_emps
Select 209,'Nanc Gren'  ,'FI_MGR'  ,100,'17-AUG-10','17-AUG-15',12008,null,80 From dual
Union ALL 
Select 210,'Danel Faet' ,'ST_CLERK',123,'16-AUG-10','10-JUL-12',9000,0.35,90 From dual	
Union All
Select 211,'Jon Chn' 	,'PU_MAN'  ,131,'28-SEP-13','05-DEC-14',8200,1.15,80 From dual
Union All
Select 212,'Doug Gree'  ,'SH_CLERK',147,'13-JAN-16','13-MAY-18',2600,null,50 from dual
Union all
Select 213,'Jenn Whal'  ,'AD_ASST' ,108,'17-SEP-11','17-OCT-15',4400,0.25,10 from dual
Union all 
Select 214,'Mich Hart'	,'MK_MAN'  ,149,'17-FEB-12','20-FEB-13',13000,0.2,20 from dual
Union all
Select 215,'Pa Fy'      ,'MK_REP'  ,205,'17-AUG-13','17-NOV-14',6000,null,20 from dual;