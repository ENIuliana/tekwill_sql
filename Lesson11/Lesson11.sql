--- Natural Join
Select *
from employees
Natural join jobs
natural join departments
where employee_id=102;


Select * 
from departments;

Select * 
from jobs
where lower(job_id)=lower('ad_pres');

Select * 
from employees
where employee_id=100;

Select *
From job_history
natural join employees;



Select employees.first_name
      ,employees.last_name
      ,jobs.job_title
from employees 
Natural join jobs;

Select t1.first_name as test_1
      ,t1.last_name test_2
      ,t2.job_title
from employees t1
Natural join jobs t2;

Select first_name
      ,last_name
      ,job_title
      ,job_id -- only for natural join dont have conflict
from employees 
Natural join jobs;


Select first_name
      ,last_name
      ,job_title
      ,a.job_id 
from employees a
join jobs b
on a.job_id=b.job_id;




----- Using column
Select *
from employees
join jobs using(job_id)
join departments using(manager_id);
--where employee_id=100;


Select *
from employees
join jobs using(job_id)
join departments using(manager_id);
where employee_id=100;

Select *
from employees a
--left join jobs b
--on a.job_id=b.job_id
left join departments c
on a.manager_id=c.manager_id
where c.manager_id is not null;

Select 107-63 from dual;

Select distinct manager_id
from employees
Minus
Select distinct manager_id
from departments;

Select *
from employees
where --manager_id=101;
employee_id in(101,102,120,122,123,124,146,147,148,149);


Select *
from departments
where manager_id =101
102
120
122
123
124
146
147
148
149;


-- Joins with ON Clause
Select t1.*
      ,t2.job_title
      ,t2.max_salary
      ,t2.min_salary
from employees t1
join jobs t2
on t1.job_id=t2.job_id;


Select t1.*
     ,t2.job_title
     ,t2.max_salary
     ,t2.min_salary
from employees t1
inner join jobs t2
on t1.job_id=t2.job_id;


Select t1.last_name||' '||first_name as full_name
      ,t3.department_name
      ,t2.job_title
      ,t2.max_salary
      ,t2.min_salary      
from employees t1
join jobs t2
on t1.job_id=t2.job_id
join departments t3
on t1.department_id = t3.department_id
and t3.department_id=90;
--where t3.department_id=90;



Select  a.employee_id
       ,a.first_name || ' '|| a.Last_name as employee_name
       --,a.manager_id
       ,b.employee_id manager_id
       ,b.first_name || ' '|| b.Last_name as manager_name
From employees a
join employees b
on a.manager_id=b.employee_id
order by 2;

Select  a.employee_id as manager_id
       ,a.first_name || ' '|| a.Last_name as manager_name 
       --,a.manager_id
       ,b.employee_id 
       ,b.first_name || ' '|| b.Last_name as employee_name
From employees a
join employees b
--on a.manager_id=b.employee_id;
on a.employee_id = b.manager_id
order by 2;


Select  a.employee_id 
       ,a.first_name || ' '|| a.Last_name as employee_name  
       --,a.manager_id
       ,b.employee_id manager_id
       ,b.first_name || ' '|| b.Last_name as manager_name
From employees a
left join employees b
on a.manager_id=b.employee_id;


Select  a.employee_id 
       ,a.first_name || ' '|| a.Last_name as employee_name  
       --,a.manager_id
       ,b.employee_id manager_id
       ,b.first_name || ' '|| b.Last_name as manager_name
From employees a
right join employees b
on a.manager_id=b.employee_id
where a.employee_id is null;

Select *
from employees a
join departments b
--on a.department_id = b.department_id;
on a.manager_id=b.manager_id
where b.manager_id is not null;



Select *
from job_grades;

Select * from employees;

Select count(*)
from employees a
cross join employees b;


Select *--count(*)
from employees a
    ,employees b;


--- From old connection as in the new tabel "job_grades" doesn't exist
Select a.employee_id
      ,Count(a.employee_id)
from employees a
join job_grades b
on a.salary between b.lowest_sal and b.highest_sal
group by a.employee_id
having count(a.employee_id)>1;


Select *
from employees a
join job_grades b
on a.salary between b.lowest_sal and b.highest_sal
where a.employee_id=141;

Select * 
from job_grades;



Select * 
from jobs;

Select min(salary),max(salary)
from employees;

delete from job_grades
where grade_level in('L','N');