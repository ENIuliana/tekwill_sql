Select * 
from employees
where employee_id= &first_var;

Select * 
from employees
where first_name= 'Jennifer';

Select * 
from employees
where first_name= '&string_var';
--where first_name= 'Diana';


Select * 
from employees
where first_name= 'Jennifer';



Select * 
from employees
where hire_date= '&date_var';
--where hire_date= '07-FEB-15'



Select first_name 
      ,last_name
      ,&hide_column
from employees
where hire_date= '&date_var'  --03-JAN-14
order by &hide_order_column;


Select employee_id
      ,last_name
      ,first_name
      ,salary
      ,&&hide_column
From employees
order by &hide_column1 DESC;


Select employee_id
      ,last_name
      ,first_name
      ,salary
      ,&&hide_column
      ,&&department_column
From employees
order by &hide_column DESC,&department_column ASC ;

Select * 
From employees;


undefine department_column;
undefine hide_column;


Define hide_column ='21-SEP-13'

Select employee_id
      ,last_name
      ,first_name
      ,salary
From employees
Where hire_date = '&hide_column';
--order by  DESC;

undefine hide_column


set verify on 
Select employee_id
      ,last_name
      ,first_name
      ,salary
      ,'&&hide_column'
From employees
where hire_date='&hide_column';


undefine hide_column;


Select first_name
      ,last_name
      ,Lower(first_name) as lower
      ,Upper(last_name) as upper
      ,Initcap(last_name)as initcap
from employees;
 

Select first_name
      ,last_name
from employees
--where lower(last_name) like'%a%'
where upper(last_name) like'%A%';


Select first_name
      ,first_name || ' ' ||last_name as fullname_1
      ,concat(first_name,last_name) as full_name_2
      ,substr(first_name,1,3) as substr_1
      ,substr(first_name,6,3) as substr_2
      ,substr(first_name,-3,3) as substr_3
      ,substr('MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28',1,15) as substr_3
      ,length(first_name) as length_1
      ,instr(lower(first_name),'e',1,2) as instr_name
      ,instr('MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28',',',1,1)
from employees;


define test_string = 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28'
Select substr('&test_string',1,instr('&test_string',',',1,1)-1) as zip_code
from dual;

Select * 
from dual;

undefine test_string;


Create table String_Addreses as
Select 'MD-2002,or.Chisinau, str. Mihai Eminescu 12, ap.28' as address from dual
Union 
Select '2010,or.Chisinau, str. Grigore Vieru 50, ap.3' as address from dual
Union
Select 'MD2015,or.Chisinau, str. Ion Creanga 4, ap.17'  as address from dual
Union
Select 'md-2030,Chisinau, st. Muncesti 8, ap.54'  as address from dual
Union
Select 'MD-2004,Chisineov, str-da. Bucuriei 2, ap.23'  as address from dual
Union 
Select 'Md-2045,or Chisin., s. Ion Inculet 8, ap.50'  as address from dual
Union 
Select 'Md2013,chisinau, str. Vasile Lupu 40, ap.20'  as address from dual
Union
Select 'MD2031,or.CHISINAU,'  as address from dual
Union 
Select 'md2017,or.CH, str. , ap.28'  as address from dual;

Select * 
from String_Addreses;

?Check if all users have acces



Afisati doar Zip-code folosind tabela "String_Addreses". 
Afisati toate valorile cu 'MD-' in fata

MD-2004


Select * 
from String_Addreses;


Select Substr(address,1,instr(address,',',1,1)-1) as t1
      ,'MD-'||substr(Substr(address,1,instr(address,',',1,1)-1),-4) zip_code
From String_Addreses;







Select address
      ,instr(address,',',1,1) as t1
      ,substr(address,1,instr(address,',',1,1)-1) as t2
      ,substr(substr(address,1,instr(address,',',1,1)-1),-4,4)as t3
      ,'MD-'||substr(substr(address,1,instr(address,',',1,1)-1),-4,4) as adress
From String_Addreses;

grant Select on String_Addreses to ora19 ;

use ora02
Select * 
from String_Addreses;



Select salary
      ,last_name
      ,lpad(salary,6,'$')
      ,rpad(salary,6,'e')
      ,concat(first_name,' ')
      ,concat(concat(first_name,' '),last_name)as full_name
      ,Lower(concat(concat(first_name,' '),last_name))as full_name1
      ,Upper(concat(concat(first_name,' '),last_name))as full_name2
      ,Initcap(concat(concat(first_name,' '),lower(last_name)))as full_name3
      ,Initcap(concat(concat(first_name,' '),last_name))as full_name3
from employees;


Select * 
from employees;

desc employees

Select Round(100.455321,2) as round_1
      ,Round(100.452321,2) as round_1_a
      ,Round(100.455321,0) as round_2
      ,Round(100.455321) as round_3
      ,Round(100.555321) as round_3_a
      ,Round(105.555321,-1) as round_
      ,Round(104.555321,-1) as round_a
      ,Round(150.555321,-2) as round_1
from dual;



Select Trunc(100.455321,2) as round_1
      ,Trunc(100.452321,2) as round_1_a
      ,Trunc(100.455321,0) as round_2
      ,Trunc(100.455321) as round_3
      ,Trunc(100.555321) as round_3_a
      ,Trunc(105.555321,-1) as round_
      ,Trunc(155.555321,-1) as round_a
      ,Trunc(150.555321,-2) as round_1
      ,Trunc(150.555321,-3) as round_1
      ,Trunc(150.545321,2) as round_1
from dual;



Select ceil(100.455321) as round_1
      ,ceil(100.000001) as round_1
      ,ceil(105.000001) as round_1
from dual;


Select floor(100.455321) as round_1
      ,floor(100.000001) as round_1
      ,floor(105.999999) as round_1
      ,round(105.999999) as round_1
from dual;

Select mod(10,5)mod_1
      ,mod(10,2)mod_2
      ,mod(100,3)mod_3
      ,mod(10,3)mod_3
from dual
where mod(10,3) <> 0

Select 
from dual;


desc employees;


Select* from employees;

'DD-Mon-YY' = '13-JAN-09'
'DD-MM-YY'  = '13-01-09' 
'Day-Month-YYYY' = 'Monday-January-2009'
MM-DD-YYYY


