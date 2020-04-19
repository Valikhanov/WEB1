SELECT 
    arlan_course.name
FROM 
  arlan_graduate
  INNER JOIN arlan_course ON arlan_graduate.course_id = arlan_course.course_id

  WHERE arlan_course.special_id IS NULL

 