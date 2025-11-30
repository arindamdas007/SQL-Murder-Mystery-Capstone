SELECT 'employees' AS t, COUNT(*) FROM employees
UNION ALL
SELECT 'keycard_logs', COUNT(*) FROM keycard_logs
UNION ALL
SELECT 'calls', COUNT(*) FROM calls
UNION ALL
SELECT 'alibis', COUNT(*) FROM alibis
UNION ALL
SELECT 'evidence', COUNT(*) FROM evidence;