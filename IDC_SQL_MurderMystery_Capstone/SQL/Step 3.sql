SELECT 
   e.name,
   a.claimed_location,
   k.room AS actual_location,
   CASE 
      WHEN a.claimed_location <> k.room THEN 'False - LIE DETECTED'
      ELSE 'Match - ALIBI Confirmed' 
   END AS Alibi_status
FROM employees e
JOIN alibis a ON e.employee_id = a.employee_id
JOIN keycard_logs k ON k.employee_id = e.employee_id
WHERE k.room = 'CEO Office'
      AND k.entry_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00'
      AND a.claim_time BETWEEN '2025-10-15 20:30:00' AND '2025-10-15 21:30:00'
      AND a.claimed_location <> k.room;