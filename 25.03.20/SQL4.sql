SELECT 
  arlan_gruppa.name, 
  arlan_gruppa.date_begin, 
  arlan_gruppa.date_end
FROM 
  arlan_gruppa
Inner Join arlan_special ON arlan_gruppa.special_id = arlan_special.special_id

where arlan_special.name = 'Информационные системы'