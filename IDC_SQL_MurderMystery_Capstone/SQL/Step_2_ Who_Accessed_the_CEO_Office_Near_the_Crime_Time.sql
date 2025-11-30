WITH suspect_access AS (
SELECT
    k.employee_id,
    k.entry_time, k.exit_time
FROM keycard_logs k
WHERE k.room = 'CEO Office'
	  AND (
           k.entry_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00'
		OR k.exit_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 20:30:00')
)
SELECT
     e.name AS primary_suspect,
     sa.entry_time, sa.exit_time
FROM employees e
JOIN suspect_access sa ON e.employee_id = sa.employee_id;