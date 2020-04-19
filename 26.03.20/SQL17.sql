SELECT arlan_user.user_id,
  arlan_user.lastname,
  arlan_user.firstname,
  arlan_otdel.name
FROM arlan_user
Inner Join arlan_teacher ON arlan_teacher.user_id = arlan_user.user_id
Inner Join arlan_otdel ON arlan_teacher.otdel_id = arlan_otdel.otdel_id
Inner Join arlan_graduate ON arlan_graduate.user_id = arlan_teacher.user_id
Inner Join arlan_graduate_time ON arlan_graduate_time.graduate_id = arlan_graduate.graduate_id
Inner Join arlan_day ON arlan_graduate_time.day_id = arlan_day.day_id AND arlan_day.name = 'Суббота'
