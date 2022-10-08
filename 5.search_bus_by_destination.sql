SELECT bo.operator_name, bt.type, b.depature_time, b.arrival_time, r.route_start, r.route_end, fare
	FROM buses b
    JOIN bus_operators bo
    ON b.operator_id = bo.operator_id
    JOIN bus_types bt
    ON b.bustype_id = bt.bustype_id
    JOIN routes r
    ON b.route_id = r.route_id
    WHERE r.route_search like '%dhaka%dinajpur%';