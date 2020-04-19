SELECT arlan_user.user_id, 
  arlan_user.lastname, 
  arlan_user.firstname
FROM arlan_user
Inner Join arlan_student ON arlan_student.user_id = arlan_user.user_id
Inner Join arlan_gruppa ON arlan_student.gruppa_id = arlan_gruppa.gruppa_id
Inner Join arlan_graduate ON arlan_graduate.gruppa_id = arlan_gruppa.gruppa_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_day ON arlan_graduate_time.day_id = arlan_day.day_id AND arlan_day.name = 'Пятница'
