SELECT
  arlan_user.lastname,
  arlan_user.firstname,
  arlan_user.patronomic,
  arlan_gruppa.name,
  arlan_special.name
  FROM arlan_student 

  INNER JOIN arlan_user ON arlan_student.user_id = arlan_user.user_id
  INNER JOIN arlan_gruppa ON arlan_student.gruppa_id = arlan_gruppa.gruppa_id
  INNER JOIN arlan_special  ON arlan_gruppa.special_id = arlan_special.special_id

   WHERE arlan_special.special_id=1