

Select First_name ||' '||Last_name as fullName
      ,job_id
      ,salary
      ,department_id
      ,manager_id
      ,CASE job_id When 'ST_CLERK' THEN salary * 0.5
                   When 'AC_ACCOUNT' THEN salary * 0.75
                   When 'ST_MAN' THEN salary * 0.4
       ELSE salary END as case_only_with_one_column_condition
      ,CASE When job_id = 'ST_CLERK' THEN salary * 0.5
            When job_id = 'AC_ACCOUNT' THEN salary * 0.75
            When job_id = 'ST_MAN' THEN salary * 0.4
            When job_id = 'ST_CLERK' THEN salary * 1000
       ELSE salary END as case_only_with_one_column_condition
      ,CASE WHEN job_id = 'IT_PROG' and salary >6000 Then department_id
            WHEN job_id = 'SA_REP' and salary <8000 Then department_id
       else manager_id
       END as case_with_more_condition
     ,Decode(job_id,'ST_CLERK',salary * 0.5
                   ,'AC_ACCOUNT', salary * 0.75
                   ,'ST_MAN', salary * 0.4
            ,salary) as salary_with_decode
From employees;



Select Sum(salary) as total_salary
      ,Min(salary) as min_salary
      ,Max(salary) as max_salary
      ,AVG(salary) as avg_salary
      ,Count(employee_id) as count_employee_id
      ,Count(nvl(commission_pct,0)) as count_employee_id
      ,Count(commission_pct) as count_employee_id
      ,Count(*) count_all
from employees;



Select count(distinct job_id) as job_id_1
      ,count(job_id) as job_id_2
      ,sum(salary) as salary_1
      ,sum(distinct salary) as salary_2
      ,Min(hire_date) as min_hire_date
      ,Max(hire_date) as max_hire_date
from  employees
where job_id='SA_REP';


Select *--distinct first_name,last_name,salary
from employees;


Select department_id 
      ,AVG(salary)
From employees
Group by department_id;

Select nvl(department_id,10) as department_id
      ,Round(AVG(salary),2)
From employees
Group by nvl(department_id,10);

Select AVG(salary)
From employees
Group by department_id;


Select department_id 
      ,job_id
      ,manager_id
      ,AVG(salary)as avg_salary
      ,Min(hire_date) as min_hire_date
      ,Max(salary) as max_salary
From employees
Where department_id between 50 and 100
Group by department_id,job_id,manager_id
order by 1;


Select department_id 
      ,job_id
      ,manager_id
      ,AVG(salary)as avg_salary
      ,Min(hire_date) as min_hire_date
      ,Max(salary) as max_salary
From employees
Where department_id between 50 and 100
---AND Max(salary)>=10000 syntax error
--AND salary <=10000
Group by department_id
        ,job_id
        ,manager_id
Having max(salary) >=10000
order by 1;



10500
11000

Select department_id
        ,job_id
        ,manager_id
        ,salary
from employees
where department_id=80;
--and salary>=10000;




