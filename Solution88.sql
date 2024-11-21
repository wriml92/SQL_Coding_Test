select s.Student_id, s.Student_name, u.subject_name, count(e.subject_name) attended_exams 
from Students s 
join Subjects u 
left join Examinations e 
  on s.student_id = e.student_id and u.subject_name = e.subject_name
group by 1, 3
order by 1, 3

-- Students and Examinations (https://leetcode.com/problems/students-and-examinations/)
-- find the number of times each student attended each exam
-- ordered by student_id and subject_name