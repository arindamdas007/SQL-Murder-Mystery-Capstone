SELECT 
    e.name,
    k.room AS actual_location,
    k.entry_time,
    a.claimed_location, 
    ev.description AS evidence_found,
    ev.found_time
FROM employees e 
JOIN keycard_logs k ON e.employee_id = k.employee_id
LEFT JOIN alibis a ON e.employee_id = a.employee_id
LEFT JOIN evidence ev ON ev.room = k.room
WHERE e.name = 'David Kumar'
   AND k.room = 'CEO Office'
   AND k.entry_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00';
