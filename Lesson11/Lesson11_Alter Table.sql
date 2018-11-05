Create table dept80 as
Select * from departments ;

Alter table dept80
add job_id varchar2(15);


Select * from dept80;


Alter table dept80
Modify department_name varchar2(50);

 
desc dept80;


Alter table dept80
Drop (location_id);

Select * from dept80;