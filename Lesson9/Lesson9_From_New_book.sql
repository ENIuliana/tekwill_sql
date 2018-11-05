
Select distinct  b.employee_id as name
      ,b.last_name as namet
      ,'Employees_Manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id
Union
Select  a.employee_id    
       ,a.last_name as name_1          
       ,'Department_manager' 
from employees a
join departments b
on a.employee_id=b.manager_id;



Select distinct  b.*
     -- ,'Employees_Manager' as emp_type
from employees a
join employees b
on a.manager_id=b.employee_id
Union ALL
Select  a.*         
       ,'Department_manager' 
from employees a
join departments b
on a.employee_id=b.manager_id;



Select t2.job_title
       ,t1.* 
from(Select distinct  b.*
                 -- ,'Employees_Manager' as emp_type
            from employees a
            join employees b
            on a.manager_id=b.employee_id
            Union ALL
            Select  a.*         
                  -- ,'Department_manager' 
            from employees a
            join departments b
            on a.employee_id=b.manager_id)t1
left join jobs t2
on t1.job_id=t2.job_id;



Select * 
from(Select distinct  b.*
     -- ,'Employees_Manager' as emp_type
    from employees a
    join employees b
    on a.manager_id=b.employee_id)t1
left join(Select  a.*         
                  -- ,'Department_manager' 
            from employees a
            join departments b
            on a.employee_id=b.manager_id)t2
on t1.employee_id=t2.employee_id;            

          
                Select * 
from(Select distinct  b.*
     -- ,'Employees_Manager' as emp_type
    from employees a
    join employees b
    on a.manager_id=b.employee_id)t1
full outer join(Select  a.*         
                  -- ,'Department_manager' 
            from employees a
            join departments b
            on a.employee_id=b.manager_id)t2
on t1.employee_id=t2.employee_id;
                


Select distinct  b.*
      ,(Select Min(b.salary)
        from employees a
        join employees b
        on a.manager_id=b.employee_id) as  min_salary
from employees a
join employees b
on a.manager_id=b.employee_id;

Select * 
from retired_emps;


Ex: 
Numele angajatului
,job_id-ul
,data angajarii
,salariul



Select First_name||' '||last_name as Name,
      job_id,
      hire_date,
      salary
From employees
Minus
Select ename,
      job,
      hiredate,
      sal
From retired_emps
Minus
Select ename,
      job,
      hiredate,
      sal
From retired_emps
order by 1;



Create table regions_old as
Select *
from regions;



Select * 
from departments;

Select * from retired_emps;

Insert Into retired_emps
Select 215,'TJ Olson'  ,'ST_CLERK'  ,100,'10-APR-15','17-AUG-15',2100,null,80 From dual;
