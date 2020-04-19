SELECT *
FROM arlan_special
INNER JOIN arlan_course ON arlan_course.special_id = arlan_special.special_id
INNER JOIN arlan_graduate ON arlan_graduate.course_id = arlan_course.course_id
INNER JOIN arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
LEFT JOIN arlan_day ON (arlan_graduate_time.day_id = arlan_day.day_id)
LEFT JOIN arlan_lesson_num ON (arlan_graduate_time.lesson_num_id = arlan_lesson_num.lesson_num_id)
WHERE arlan_lesson_num.time_lesson BETWEEN '14:00:00' and '18:00:00' AND (arlan_day.name = 'Четверг' OR arlan_day.name = 'Суббота') AND arlan_day.day_id IS NULL AND arlan_lesson_num.lesson_num_id IS NULL
