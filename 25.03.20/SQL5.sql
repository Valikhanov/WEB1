SELECT  
  arlan_user.lastname, 
  arlan_user.firstname,
  arlan_user.patronomic,
  arlan_gruppa.name,
  arlan_course.name
 FROM arlan_student

INNER JOIN arlan_gruppa
    ON arlan_student.gruppa_id = arlan_gruppa.gruppa_id
INNER JOIN arlan_user
    ON arlan_student.user_id = arlan_user.User_id
INNER JOIN arlan_graduate
    ON arlan_graduate.gruppa_id = arlan_gruppa.gruppa_id
INNER JOIN arlan_course
    ON arlan_graduate.course_id = arlan_course.course_id




  