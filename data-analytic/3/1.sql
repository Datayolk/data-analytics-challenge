SELECT room_type, COUNT(*) AS available_rooms
FROM rooms
WHERE status = 'available'
GROUP BY room_type;