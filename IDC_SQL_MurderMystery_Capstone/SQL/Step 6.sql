SELECT
   DISTINCT CONCAT('Full Name of Killer: ', e.name) AS killer
FROM employees e
JOIN alibis a ON a.employee_id = e.employee_id
JOIN keycard_logs k ON e.employee_id = k.employee_id
LEFT JOIN evidence ev ON k.room = ev.room
WHERE k.room = 'CEO Office'
  AND a.claimed_location <> k.room
  AND k.entry_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00';