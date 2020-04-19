SELECT 
  arlan_course.name, 
  arlan_course.hourse, 
 arlan_special.name
FROM  
      arlan_special
 
INNER JOIN arlan_course
    ON arlan_course.special_id = arlan_special.special_id



 WHERE arlan_special.otdel_id = '2'