SELECT
  arlan_gruppa.name, COUNT(*)
FROM  arlan_gruppa
  INNER JOIN arlan_graduate ON arlan_gruppa.gruppa_id=arlan_graduate.gruppa_id
GROUP BY arlan_gruppa.gruppa_id 