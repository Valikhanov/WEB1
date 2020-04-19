SELECT arlan_otdel.name
From arlan_otdel
Inner Join arlan_teacher ON arlan_teacher.otdel_id = arlan_otdel.otdel_id
Inner Join arlan_graduate ON arlan_graduate.user_id = arlan_teacher.user_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_day ON arlan_graduate_time.day_id = arlan_day.day_id AND arlan_day.name = 'Вторник'
Inner Join arlan_lesson_num On arlan_graduate_time.lesson_num_id = arlan_lesson_num.lesson_num_id AND arlan_lesson_num.time_lesson BETWEEN '09:00:00' AND '12:00:00'
