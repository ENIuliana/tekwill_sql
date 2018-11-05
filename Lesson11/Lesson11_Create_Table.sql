CREATE TABLE My_First_Table_1
        (deptno Number(2) 
        ,dname VARCHAR2(14)
        ,loc VARCHAR2(13)
        ,create_date timestamp default (localtimestamp));
        
Insert into My_First_Table--(deptno,dname,loc)
--Values (1,'Test Departmen','Unde loca',sysdate);
Values (1,'Test Departmen','Unde loca','10-OCT-18');
--Values (2,'Test Departmen','Unde location'); 


Insert into My_First_Table_1(deptno,dname,loc)
Values (3,'Test Departmen','Unde loca');

Select *
from My_First_Table;

Select *
from My_First_Table_1;

desc My_First_Table;

Select sysdate,localtimestamp from dual;


Select * 
From employees;

Create Table Hr_Table (employee_id number(6) Constraint EMP_employee_id Primary Key
                      ,first_name Varchar2(50)
                      ,last_name Varchar2(50));


Select * 
from Hr_Table;

Insert into Hr_Table(employee_id,first_name,last_name)
Values(2,'sdjlk','jksldzx');


Select count(distinct email)
From employees;


Create Table Hr_Table_1 (employee_id number(6) Constraint EMP_PK_Empl Primary Key
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) Constraint EMP_NN_email not null 
                                            Constraint EMP_UN_email unique
                        ,last_name Varchar2(50)
                      );
                      
                      
Create Table Hr_Table_2 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,Constraint EMP_PK_Empl_1 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_1 unique (email)
                      ); 
                      
Insert into employees
values(210,'Lex','De Haan','sdfgh','515.123.4569','13-JAN-09','AD_VP',0,null,100,90);

Select *
From employees;

Create Table Hr_Table_3 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,department_id  number(6) 
                        ,constraint Test_FK_1 Foreign Key (department_id )References departments(department_id)
                        ,Constraint EMP_PK_Empl_2 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_2 unique (email)
                      ); 
                      

Create Table Hr_Table_4 (employee_id number(6) 
                        ,first_name Varchar2(50)
                        ,email Varchar2(50) not null
                        ,last_name Varchar2(50) not null
                        ,department_id  number(6) constraint Test_FK_2 References departments(department_id)
                        ,Constraint EMP_PK_Empl_3 Primary Key (employee_id)
                        ,Constraint EMP_UN_email_3 unique (email)
                      ); 
                      
                      
Create table employees_old
As
Select * 
from employees;