SELECT
CASE
WHEN strftime('%w', check_in_date) = '0' THEN 'Sunday'
WHEN strftime('%w', check_in_date) = '1' THEN 'Monday'
WHEN strftime('%w', check_in_date) = '2' THEN 'Tuesday'
WHEN strftime('%w', check_in_date) = '3' THEN 'Wednesday'
WHEN strftime('%w', check_in_date) = '4' THEN 'Thursday'
WHEN strftime('%w', check_in_date) = '5' THEN 'Friday'
WHEN strftime('%w', check_in_date) = '6' THEN 'Saturday'
END AS day_of_week,
COUNT(*) AS booking_count
FROM reservations
GROUP BY day_of_week
ORDER BY booking_count DESC
LIMIT 1;