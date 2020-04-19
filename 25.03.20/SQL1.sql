SELECT 
  arlan_user.lastname,
  arlan_user.firstname,
  arlan_user.patronomic,
  arlan_gender.name, 
  arlan_otdel.name
  FROM arlan_user


  INNER JOIN arlan_teacher ON arlan_user.user_id = arlan_teacher.user_id
  INNER JOIN arlan_otdel  ON arlan_teacher.otdel_id = arlan_otdel.otdel_id
  INNER JOIN arlan_gender  ON arlan_user.gender_id = arlan_gender.gender_id

  WHERE arlan_otdel.otdel_id=1




