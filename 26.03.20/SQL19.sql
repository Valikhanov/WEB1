SELECT arlan_course.name, 
  arlan_course.hourse, 
  arlan_special.name, 
  arlan_day.name
FROM arlan_otdel 
INNER JOIN arlan_special ON arlan_special.otdel_id = arlan_otdel.otdel_id
INNER JOIN arlan_course ON arlan_course.special_id = arlan_special.special_id
INNER JOIN arlan_graduate ON arlan_graduate.course_id = arlan_course.course_id
INNER JOIN arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
INNER JOIN arlan_day ON arlan_graduate_time.day_id = arlan_day.day_id 
WHERE arlan_otdel.otdel_id = '2' AND (arlan_day.day_id = '3' OR arlan_day.day_id = '5')
