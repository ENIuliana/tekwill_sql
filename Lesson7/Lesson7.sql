 Select sysdate
      ,current_date
      ,sessiontimezone
      ,current_timestamp
 From dual;
 
 
 select '05-OCT-18' 
 from dual;
 
 DD-MM-YYYY
 
 Select sysdate
       ,hire_date
       ,Round((sysdate-hire_date)/7)       
 From employees;
 
 Select (sysdate - start_date)/7 weeks
       ,(sysdate - start_date) as days
 from Ad_Exam_details
 where exam_id=550;
 
 Select first_name ||' '||last_name
       ,sysdate
       ,hire_date
       ,Round((sysdate-hire_date)/7) as how_old_was_hired   
       ,Round((sysdate-hire_date)/365) years 
 From employees
 where Round((sysdate-hire_date)/365)>5;
 
 
 
  Select first_name ||' '||last_name
       ,sysdate
       ,hire_date
       ,Round((sysdate-hire_date)/7) as how_old_was_hired   
       ,Round((sysdate-hire_date)/365.25)*12 as nr_of_months_1
       ,Round((sysdate-hire_date)/365)*12 as nr_of_months_1_a
       ,Round((sysdate-hire_date)/365) years 
       ,Round(months_between(sysdate,hire_date)) nr_of_months_2
       ,add_months(sysdate,2) add_months 
       ,next_day(sysdate,'Friday') next_friday
       ,next_day(sysdate,'Thu') next_friday
       ,next_day(sysdate,'Monday') next_friday
       ,next_day(sysdate,4) next_friday
       ,last_day(sysdate) last_day
       ,last_day(hire_date) last_day_hire_date
       ,last_day('12-Jul-15') last_day_hire_date_1
 From employees;
 --where Round((sysdate-hire_date)/365)>5;
 
 
 --- Investigate why is bigger then 1: next_day(sysdate,4) next_friday
 
 
 Select hire_date
       ,Round(hire_date,'Year') as round_year
       ,Round(hire_date,'Month') as round_year
       ,sysdate
       ,Round(sysdate,'Year') as sysdate_year
       ,Round(sysdate,'Month') as sysdate_year_1
       ,Round(to_date('15-APR-14','DD-MON-YY'),'Month') as sysdate_year_1
       ,trunc(sysdate,'Month') as trunc_month_1
       ,trunc(sysdate,'Year') as sysdate_year_2
       ,Round(to_date('16-APR-18','DD-MON-YY'),'Month') as sysdate_year_1
 From employees;
 
 
 
 
 
 
 
 
 
 