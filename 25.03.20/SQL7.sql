SELECT
  arlan_otdel.name, COUNT(*)
  FROM arlan_student
    INNER JOIN arlan_gruppa 
      ON arlan_student.gruppa_id = arlan_gruppa.gruppa_id
        INNER JOIN arlan_special 
          ON arlan_gruppa.special_id= arlan_special.special_id
            INNER JOIN arlan_otdel ON arlan_special.otdel_id=arlan_otdel.otdel_id
              GROUP BY arlan_otdel.otdel_id