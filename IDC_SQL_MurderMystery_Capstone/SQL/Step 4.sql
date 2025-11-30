SELECT 
    c.call_id,
    ce.name AS caller,
    re.name AS receiver,
    c.call_time,
    c.duration_sec
FROM calls c
LEFT JOIN employees ce ON ce.employee_id = c.caller_id
LEFT JOIN employees re ON re.employee_id = c.receiver_id
WHERE c.call_time BETWEEN '2025-10-15 20:30' AND '2025-10-15 21:30'
ORDER BY c.call_time;