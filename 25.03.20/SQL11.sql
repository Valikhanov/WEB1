SELECT 
    arlan_special.name
FROM 
    arlan_course 
INNER JOIN arlan_special
    ON arlan_course.special_id = arlan_special.special_id
  INNER JOIN arlan_graduate
    ON arlan_graduate.course_id = arlan_course.course_id
WHERE arlan_graduate.course_id IS NULL