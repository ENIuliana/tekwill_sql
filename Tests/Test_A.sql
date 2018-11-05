A
1)Care este rezultatul corect pentru urmatorul select:

Select First_name as Name
      ,Email_addr as Email
      ,parent_id
From AD_Student_Details
Where parent_id >=620
And parent_id <=630
And email_addr is not null
Order by 1, 2 desc;

2)Identificati erorile in selectul de mai jos,si scrieti  varianta corecta

Select faculty_id 
      ,login_date "login"
      ,login_time as log time
      ,details 
from AD_Faculty_login_Details;
Where log time is null
or login_time is not null;

Select faculty_id 
      ,login_date login
      ,login_time as "log time"
      ,details 
from AD_Faculty_login_Details
Where login_time is null
or login_time is not null;


3) In baza datelor de mai jos
Select * 
From job_history




