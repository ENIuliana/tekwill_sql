B
1)Alegeti care este rezultatul corect pentru urmatorul select:

Select course_name as "Course Name"
      ,Department_id as Department
      ,session_id
From AD_course_details
Where course_name like '%BIOLOGY%'
--OR course_name like '%ACCOUNTING%'
Order by session_id desc, 1;

2) Identificati erorile in selectul de mai jos,si scrieti  varianta corecta

Select student_id 
      ,exam_id
      ,course_id as course id
      ,marks as points
from AD_exam_results
Order by 2,points desc
Where  course id is not null;


Select student_id 
      ,exam_id
      ,course_id as "course id"
      ,marks as points
from AD_exam_results
Where course_id is not null
Order by 2,points desc;
