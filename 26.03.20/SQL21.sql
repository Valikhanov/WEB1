SELECT
 arlan_day.name, COUNT(*)
 FROM arlan_course
 INNER JOIN arlan_graduate ON arlan_graduate.course_id = arlan_course.course_id
 INNER JOIN arlan_graduate_time ON arlan_graduate_time.graduate_id= arlan_graduate.graduate_id
 INNER JOIN arlan_day ON arlan_graduate_time.day_id=arlan_day.day_id
 GROUP BY arlan_day.day_id
