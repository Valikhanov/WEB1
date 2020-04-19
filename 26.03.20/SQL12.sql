SELECT  arlan_user.user_id, 
        arlan_user.lastname, 
        arlan_user.firstname
FROM arlan_user
Inner Join arlan_student ON arlan_student.user_id = arlan_user.user_id
Inner Join arlan_gruppa ON arlan_student.gruppa_id = arlan_gruppa.gruppa_id
Inner Join arlan_graduate ON arlan_graduate.gruppa_id = arlan_gruppa.gruppa_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_lesson_num ON arlan_graduate_time.lesson_num_id = arlan_lesson_num.lesson_num_id AND arlan_lesson_num.time_lesson BETWEEN '10:30:00' AND '18:30:00' AND arlan_user.gender_id='2'
