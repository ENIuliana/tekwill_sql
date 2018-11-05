1) a
Scrieti un select pentru a afisa numele angajatilor si numele departamentului in care acestia lucreaza.

Select a.first_name ||' '||a.last_name as employee_name
      ,b.department_name
from employees a
left join departments b
on a.department_id=b.department_id;

1) b
Afisati citi angajati lucreaza in fiecare departament,ordonati descrescator dupa numarul de angajati

Select b.department_name
      ,Count(a.first_name ||' '||a.last_name)
from employees a
left join departments b
on a.department_id=b.department_id
group by b.department_name
order by 2 desc;


2) 
Scrieti un select care va afisa pentru toti angajatii numele angajatului, al departamentului,
al tarii,al orasului,al provinciei si numele Regiunii din care-i adresa pe care locuieste.

Select *
from employees a
left join departments b
on a.department_id=b.department_id
left join locations c
on b.location_id=c.location_id
left join countries d
on c.country_id=d.country_id
left join regions e
on d.region_id = e.region_id
where b.department_name is null;


3)Scrieti un Select care va afisa first_name, last_name si salariul pentru acei angajati care cistiga mai 
putin decit angajatul cu employee_id 182.
Select e.first_name
      ,e.last_name
      ,e.salary 
From employees e 
Join employees s
On e.salary < s.salary 
AND s.employee_id = 182;


4)
Afisati toti angajatii cu numele lor complet, la fel si pentru managerul acestora,salariile lor 
si care este diferenta de salariu dintre angajat si manager indiferent daca angajatul
lucreaza sau nu sub un careva manager.
Numiti coloanele afisate corespunzator.
Select a.first_name ||' '||a.last_name as employee_name
      ,a.salary as employee_salary
      ,b.first_name ||' '||b.last_name as manager_name
      ,b.salary as manager_salary
      ,abs(b.salary - a.salary) as salary_difference
from employees a
left join employees b
on a.manager_id=b.employee_id;


5)
Scrieti un select care ar afisa numele angajatului si al departamentului pentru persoanele care lucreaza 
in aceleasi departament ca si angajatii care contin in nume/last_name "Taylor"

Select e.first_name ||' '|| e.last_name as full_name
     , f.department_name 
From employees e
Join employees s
on e.department_id = s.department_id 
And s.last_name = 'Taylor'
join departments f
on e.department_id=f.department_id;


Select e.first_name ||' '|| e.last_name as full_name
     , f.department_name 
From employees e
Join employees s
on s.last_name = 'Taylor'
join departments f
on e.department_id=f.department_id;

Select * from employees
where last_name = 'Taylor';


6)Scrieti un select pentru a afisa numele angajatilor, salariul actual si diferenta dintre
salariul maxim pe care il poate avea in dependenta de job si salariul care-l are la moment.(cu cit ar
putea sa fie salary encrease pentru el)
Folosind "natural join"

Select job_title
     , first_name || ' ' || last_name   Employee_name 
	 , max_salary-salary AS salary_difference 
From employees 
Natural Join jobs;

Select * 
from jobs;


7)Folosind "Using Join" scrieti un select pentru a afisa titlul jobului, numele departamentului,numele complet
si data cind a inceput anagajatul sa lucreze in o oarecare pozitie pentru toate joburile
care au inceput dupa 1 Ianuarie 1993 and si au finisat inainte de 31 August 1997


Select  job_title
       ,department_name
       ,first_name || ' ' || last_name AS Employee_name
       ,start_date 
       ,employee_id
From job_history 
Join jobs USING (job_id) 
Join departments USING (department_id) 
Join  employees USING (employee_id) 
Where start_date >= to_date('1993-01-01','YYYY-MM-DD')
and start_date <= to_date('1997-08-31','YYYY-MM-DD');
/*
Where start_date  between to_date('1993-01-01','YYYY-MM-DD') and to_date('1997-08-31','YYYY-MM-DD');*/


Select * 
from job_history
where employee_id =200;


Select * 
from employees
where employee_id =200;


8)
Scrieti un select pentru a afisa numele departamentului, salariul mediu pe departament si numarul 
de angajati doar care primesc comision.


Select department_name
    , ROUND(AVG(salary)) as salariu_mediu
    , COUNT(commission_pct) as persoane_cu_comission
From departments 
Join employees 
Using(department_id) 
Group by department_name;


Select *--count(commission_pct)
From  employees  
where commission_pct is not null;


Select count(commission_pct)
From departments 
Join employees 
Using(department_id) 
where commission_pct is null
Group by department_name;



9) 
Scrieti un slect pentru a afisa numele complet, job name pentru acei angajati care 
lucreaza in departamentul 80. 
Scrieti toate variantele posibile utilizind toate tipurile de join.



Select job_title
      ,first_name || ' ' || last_name AS Employee_name 
	  ,max_salary-salary AS salary_difference
From employees 
Natural Join jobs 
Where department_id  = 80;
            
Select job_title
      ,first_name || ' ' || last_name AS Employee_name 
	  ,max_salary-salary AS salary_difference
From employees 
Join jobs 
using (job_id)
Where department_id  = 80;         
         
         
Select job_title
      ,first_name || ' ' || last_name AS Employee_name 
	  ,max_salary-salary AS salary_difference
From employees a
Join jobs b
on a.job_id=b.job_id
Where department_id  = 80;
            
 
10)
Scrieti un select pentru a afisa tara, orasul si numele departamentului pentru toate 
adresele definite.

Select country_name
      ,city
      ,department_name 
From countries 
Join locations 
Using(country_id) 
Join departments 
Using (location_id);


11)
Afisati numele departamentului si numele complet al manegerului de departament

Select department_name
      ,first_name || ' ' || last_name AS name_of_manager
From departments d 
Join employees e
on (d.manager_id=e.employee_id); 

12)
Scrieti un query pentru a afisa numele jobului si salatiul mediu pe angajat.

Select job_title
     , AVG(salary) 
From employees 
Natural Join jobs 
Group By job_title; 
 
13)
Scrieti un select pentru a afisa titlurile joburilor care au fost obtinute de oricare 
din angajati care in prezent cistiga un salariu mai mare decit 12000.

Select a.*,m.salary
From  job_history a 
Join employees m 
On (a.employee_id = m.employee_id)
Where salary >= 12000;


14)Scrieti un select pentru a afisa numele departamentului, numele managerului 
si orasul acestora.
Select department_name
      ,first_name || ' ' || last_name AS name_of_manager
      ,city 
From departments d 
Join employees e
on (d.manager_id=e.employee_id) 
Join locations l 
Using (location_id);

15) 
Scrieti un select pentru a afisa numele angajatului, numele jobului si numarul de zile
lucrate doar pentru joburile din departamanetul 80.
Select employee_id
     ,job_title
     ,end_date-start_date days 
From job_history 
Natural Join jobs 
Where department_id=80;

16)
Afisati numele complet,departamentul si salariul acelor angajati care lucreaza in 
careva departamente locate in Londra.

Select first_name || ' ' || last_name as Employee_name
      ,salary
From employees 
Join departments 
Using (department_id) 
Join  locations 
Using(location_id) 
Where  city = 'London';

17)Afisati citi angajati sunt in fiecare departament
Select department_name
      ,count(employee_id)
From employees a
left join departments b
on a.department_id=b.department_id
group by department_name
order by 2;


18)? with subquery
Afisati numele complet,numele jobului,start si end date al ultimului job al 
acelor angajati care au lucrat fara procente de comision
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee_name,
       j.job_title,
       h.*
FROM employees e
JOIN
  (SELECT MAX(start_date),
          MAX(end_date),
          employee_id
   FROM job_history
   GROUP BY employee_id) h ON e.employee_id=h.employee_id
JOIN jobs j ON j.job_id=e.job_id
WHERE e.commission_pct = 0;



?14) with subquery
Afisati tara,orasul si numele acelor departamente unde cel putin 2 angajati lucreaza.
Select country_name
      ,city
      ,Count(department_id)
From countries 
Join locations 
Using(country_id) 
Join departments 
Using(location_id) 
Where department_id in 
    (Select department_id 
     From employees 
	 Group by department_id 
	 Having Count(department_id)>=2)
Group by country_name,city;






            
Create table job_grades
As(
Select 'A' grade_level,1000 lowest_sal,2999 highest_sal From dual
Union
Select 'B',3000,5999 From dual
Union 
Select 'C',6000,9999 From dual
Union
Select 'D',10000,14999 From dual
Union 
Select 'E',15000,24999 From dual
Union 
Select 'F',25000,40000 From dual);


https://www.w3resource.com/sql-exercises/joins-hr/index.php#SQLEDITOR


