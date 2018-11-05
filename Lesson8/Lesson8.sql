Select Round(to_date('16-APR-18','DD-MON-YY'),'Month') as explicit_conversion
     -- ,Round('16-APR-18','Month') as sysdate_year_1
     ,last_day('12-Jul-15') implicit_date_conversion
     ,months_between('12-Jul-16','12-Jul-15') implicit_date_conversion_1
    -- ,months_between('Jul-12-16','12-Jul-15') non_valid_date
from dual;


Select '2'-1 char_as_number
      ,'abc'-1 non_valid_number
From dual;


Select hire_date
      ,hire_date ||q'[It's Date]'
      ,to_char(hire_date,'Day-Month-Year') as to_char_1
      ,to_char(hire_date,'DD-MM-YYYY') as to_char_1
      ,to_char(hire_date,'YYYY-MM-DD') as to_char_1
      ,sysdate-to_date(to_char(hire_date,'DD-MON-YY'),'DD-MON-YY')
      ,
From employees;


Select * 
From employees
where hire_date = '07-02-15'; to_date('07-02-15','DD-MM-YY');

Select hire_date
      ,to_char(hire_date,'DD-MM-YYYY') as to_char
      ,to_char(hire_date,'Day-Month-YYYY') as to_char_1
      ,to_char(hire_date,'Day.Month.YYYY') as to_char_2
      ,to_char(hire_date,'DD/MM/YYYY') as to_char_3
      ,to_char(hire_date,'DD/MM/YYYY HH24:MI:SS AM') as to_char_4
      ,to_char(hire_date,'DD "of" Month,YYYY') month_of
      ,to_char(hire_date,'DDspth "of" Month,YYYY') month_of
      ,to_char(hire_date,'Ddspth "abc" Month,YYYY') month_of
From employees;
where hire_date='29-JAN-13';




Select to_char(hire_date,'Ddspth "abc" Month,YYYY') month_of
      ,to_char(hire_date,'Day.Month.YYYY') as to_char_fm_
      ,to_char(hire_date,'fmDay.Month.YYYY') as to_char_fm_2
      ,to_char(employee_id,'9999.999') as format_number_model
      ,to_char(employee_id,'$9999.999') as USD
      ,to_char(employee_id,'L9999.999') as USD
      ,to_char(salary,'99,999.999') as USD
      ,salary
From employees;


Select phone_number    
     ,to_number('590.423','999.999')as t_1
     ,to_number('590.423','999D999')as t_2
     ,to_number('590,423','999G999')as t_3
     ,to_number('590,423','999999')as t_4
     ,to_number('515,123,456','999999999')as t_5
     ,to_number('515,123,456','999G999G999')as t_6
     --,to_number(phone_number,'999G999G9999')
     --,to_number(phone_number,'9999999999')
     ,to_number(replace(phone_number,'.',','),'999G999G9999') t_7
     ,to_number(replace(phone_number,'.',','),'9999999999') t_7
from employees
where employee_id between 100 and 144;



Select round(months_between(sysdate,to_date('17-06-2011','DD-MM-YY')))as string_with_date
     ,sysdate
     ,to_date('17-06-2011','DD-MM-YY') 
     ,'17-06-2011'
from employees;
--where hire_date = to_date('17-06-2011','DD/MM/YYYY');
--where hire_date = '17-06-2011';


--To number in format '999,999.999', why is not working ?


Select salary
      ,commission_pct
      ,nvl(commission_pct,0)as substitution_commision
      ,salary * commission_pct as full_salary
      ,salary * nvl(commission_pct,1) as full_salary
from employees;


Select * 
from employees
where nvl(commission_pct,0)<=0.2;
-- where commission_pct <=0.2; different results


Select commission_pct
      ,nvl2(commission_pct,1,0)
      ,nullif(10,5) return_null
      ,nullif(10,10) return_first_param
      ,commission_pct
      ,manager_id
      ,department_id
      ,employee_id
      ,coalesce(commission_pct,manager_id,department_id,employee_id) as return_first_notnullVal
      ,coalesce(null,null,null,null,null,10) as test_1
      ,nvl(manager_id,'12')
      --,nvl(manager_id,'adf') not_a valid_number_format
from employees
where nvl2(commission_pct,1,0) = 0;


Select * 
from employees;


desc employees;






