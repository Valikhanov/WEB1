SELECT
  arlan_user.lastname,
  arlan_user.firstname,
  arlan_user.patronomic,
  arlan_gruppa.name,
  arlan_course.hourse,
  arlan_course.name
FROM arlan_teacher
INNER JOIN arlan_user
    ON arlan_teacher.user_id = arlan_user.User_id
  INNER JOIN arlan_graduate
    ON arlan_graduate.user_id = arlan_teacher.user_id
  INNER JOIN arlan_graduate_time
    ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
  INNER JOIN arlan_lesson_num
    ON arlan_graduate_time.lesson_num_id = arlan_lesson_num.lesson_num_id
  INNER JOIN arlan_course
    ON arlan_graduate.course_id = arlan_course.course_id
  INNER JOIN arlan_gruppa
    ON arlan_graduate.gruppa_id = arlan_gruppa.gruppa_id
WHERE arlan_lesson_num.time_lesson between '08:30:00' AND '15:00:00'
  
