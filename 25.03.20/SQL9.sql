SELECT  
  arlan_user.lastname,
  arlan_user.firstname,
  arlan_user.patronomic 
  FROM 
    arlan_teacher
 INNER JOIN arlan_user
    ON arlan_teacher.user_id = arlan_user.User_id
  INNER JOIN arlan_graduate
    ON arlan_graduate.user_id = arlan_teacher.user_id
  WHERE arlan_graduate.user_id IS null