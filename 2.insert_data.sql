
INSERT INTO users(first_name,last_name,email,password)
	VALUES ('dhiman', 'roy', 'dhimanroyit@gmail.com', 'password1234');

INSERT INTO bus_operators(operator_name)
	VALUES ('Hanif Enterprise'), ('Nabil Paribahan'), ('Shyamoli Paribahan'), ('Rs Paribahan');

INSERT INTO bus_types(type)
	VALUES ('ac'), ('non-ac');
    
INSERT INTO routes(route_start, route_end, route_search)
	VALUES 
		('dhaka', 'dinajpur', 'dhaka-bogura-birampur-joipurhat-fulbari-dinajpur'),
		('dhaka', 'rangpur', 'dhaka-bogura-polashbari-rangpur'),
        ('dhaka', 'rajshahi', 'dhaka-natore-rajshahi'),
        ('dinajpur', 'dhaka', 'dinajpur-bogura-sirajgonj-tagail-dhaka'),
        ('rangpur', 'dhaka', 'rangpur-bogura-sirajgonj-tagail-dhaka'),
        ('rajshahi', 'dhaka', 'rajshahi--sirajgonj-tagail-dhaka');
        
INSERT INTO sits()
	VALUES (), (), (), (), (), ();
    
INSERT INTO buses(
    operator_id,
    bustype_id,
    sit_id,
    route_id,
    bus_no,
    bus_title,
    bus_class,
    depature_time,
    arrival_time,
    fare)
    VALUES (1, 1, 1, 1, 'h-coach-1', 'VOLVO', 'business class', '10:00:00', '18:00:00', 1500),
			(1, 2, 2, 4, 'h-coach-2', 'Hino-1J', 'economy class', '09:00:00', '17:00:00', 900),
            (2, 1, 3, 2, 'n-coach-1', 'Scania', 'business class', '08:00:00', '15:00:00', 1300),
            (2, 2, 4, 5, 'n-coach-2', 'HINO-1J', 'economy class', '09:00:00', '16:00:00', 800),
            (3, 1, 5, 3, 's-coach-1', 'VOLVO', 'business class', '01:00:00', '05:00:00', 1400),
            (3, 2, 6, 6, 's-coach-2', 'HINO-1J', 'economoy class', '12:00:00', '04:00:00', 700);
  