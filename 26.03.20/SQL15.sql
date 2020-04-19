SELECT arlan_day.*
FROM arlan_day
LEFT JOIN arlan_graduate_time ON (arlan_day.day_id = arlan_graduate_time.day_id)
WHERE arlan_graduate_time.graduate_time_id IS NULL
