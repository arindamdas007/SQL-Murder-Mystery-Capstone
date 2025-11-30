SELECT 
       k.room AS crime_location,
	   MIN(k.entry_time) AS critical_entry_time,
       MAX(k.exit_time) AS criticak_exit_time
FROM keycard_logs k
WHERE k.room like '%CEO%' 
     AND k.entry_time >= '2025-10-15 20:00:00'
GROUP BY k.room;