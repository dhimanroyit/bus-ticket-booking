SELECT concat(c.first_name, " ", c.last_name) as customer_name, sit_no, total_sit, total_fare, boarding_point, dropping_point
FROM booked bk
JOIN buses b
ON bk.bus_id = b.bus_id
JOIN customers c
ON bk.customer_id = c.customer_id
