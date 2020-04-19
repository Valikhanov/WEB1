SELECT arlan_user.user_id, 
  arlan_user.lastname, 
  arlan_user.firstname, 
  arlan_gruppa.name, 
  arlan_special.name
  FROM arlan_user
INNER JOIN arlan_student ON arlan_student.user_id = arlan_user.user_id
INNER JOIN arlan_gruppa ON arlan_gruppa.gruppa_id = arlan_student.gruppa_id
INNER JOIN arlan_special ON arlan_special.special_id = arlan_gruppa.special_id
Inner JOIN arlan_graduate ON arlan_graduate.gruppa_id = arlan_gruppa.gruppa_id
INNER JOIN arlan_course ON arlan_graduate.course_id = arlan_course.course_id AND arlan_course.hourse > '95'
