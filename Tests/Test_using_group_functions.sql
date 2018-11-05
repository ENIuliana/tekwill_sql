1)Afisati luna si anul in formatul "MM.YYYY" si care a fost salariul maxim de angajare in luna respectiva 
doar pentru persoanele la care numarul de telefon incepe cu 650. Ordonati datele descendent dupa salariu.


Select to_char(hire_date,'mm.yyyy')as months
      ,max(salary) as max
from employees
where phone_number like'650%'
group by to_char(hire_date,'mm.yyyy')
order by 2 desc;


Select * 
from employees
where phone_number like'650%';

2)Afisati job_id si numarul de angajati in aceste functii/joburi.
 Afisati job_id cu prima litera mare si restul mici. 

Select --job_id
       substr(initcap(job_id),1,2)||lower(substr(initcap(job_id),3)) as lower_jobId
     -- ,initcap(job_id)
      ,count(*)
From employees
group by job_id; 


3-a) Afisati luna:"MM.YYYY" si cite persoane au fort angajate in luna respectiva,ordonati rezultatul dupa luna descendent.

Select to_char(hire_date,'MM.YYYY')
      ,count(*)
from employees
--where to_char(hire_date,'MM.YYYY')='02.2015'
group by to_char(hire_date,'MM.YYYY')
order by to_date(hire_date,'MM.YYYY') desc;


Select to_char(hire_date,'MM.YYYY')
      ,count(*)
from employees
--where to_char(hire_date,'MM.YYYY')='02.2015'
group by to_char(hire_date,'MM.YYYY')
order by to_date(hire_date,'MM.YYYY');

Select to_date(hire_date,'MM.YYYY')
     -- ,count(*)
from employees
--where to_char(hire_date,'MM.YYYY')='02.2015'
group by to_char(hire_date,'MM.YYYY')
order by to_date(hire_date,'MM.YYYY');



Select to_date(hire_date,'MM.YYYY')
     -- ,count(*)
from employees
order by  1;



select * from employees
order by hire_date;

3-b) Afisati doar lunile in care au fost angajate mai mult de o persoana.
Select to_char(hire_date,'MM.YYYY')
      ,count(*)
from employees
--where to_char(hire_date,'MM.YYYY')='02.2015'
group by to_char(hire_date,'MM.YYYY')
having count(*)>1;


4) Afisati care sunt managerii care au in subdiviziune mai multe de o persoan

Select manager_id
      ,count(employee_id)
from employees
group by manager_id
having count(employee_id)>1;


5) Afisati toate comisioanele si numarul persoanelor care primesc salariu cu comisionul respectiv.
Pentru persoanele care nu au comision afisati "Persoane fara comision".

Select nvl(to_char(commission_pct,'0.99'),'Persoane fara comision')
     ,count(*)
from employees
group by commission_pct;


6-a)Afisati employee_id, job_id si cite luni a lucrat persoana respectiva in acea functie.
Ordonati datele la alegere astfel incit data angajatul are mai multe inregistrari sa le vizualizati impreuna. 


Select  employee_id
       ,job_id
       ,round(months_between(end_date,start_date))
from job_history a
order by 1;

6- b)Verificati daca sunt persoane care si-au schimbat jobul cel putin de 2 ori.

Select  employee_id
       ,Count(1)
from job_history a
group by employee_id
having count(1)>1;

7) scrieti un select ca sa afiseje toata informatia acestor persoane.


Select * from job_history;