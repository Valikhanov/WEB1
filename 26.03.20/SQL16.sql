SELECT arlan_special.name
FROM arlan_special
Inner Join arlan_course ON arlan_course.special_id = arlan_special.special_id
Inner Join arlan_graduate ON arlan_graduate.course_id = arlan_course.course_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_day ON arlan_graduate_time.day_id = arlan_day.day_id AND arlan_day.name = 'Вторник'
