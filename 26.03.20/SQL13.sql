SELECT arlan_course.course_id, 
       arlan_course.name
FROM arlan_course
Inner Join arlan_graduate ON arlan_graduate.course_id = arlan_course.course_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_lesson_num ON arlan_graduate_time.lesson_num_id = arlan_lesson_num.lesson_num_id AND arlan_lesson_num.time_lesson BETWEEN '12:30:00' AND '18:30:00'
