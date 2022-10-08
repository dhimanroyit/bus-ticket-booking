UPDATE sits 
SET available_sit = (available_sit - 2), 
	booked_sit = (booked_sit + 2), 
    a1 = true, 
    a2 = true
WHERE sit_id = 1;

INSERT INTO customers(
	first_name,
    last_name,
    email,
    phone,
    age,
    gender,
    address)
	VALUES ("saddam", "hossain", "saddamhossain@gmail.com","+880173275447", "26", "male", "balubari, dinajpur");

INSERT INTO payments(
	amount,
    payment_date)
    VALUES (1500, "2022-10-08");
    
INSERT INTO booked(
	customer_id,
    bus_id,
    payment_id,
    sit_no,
    total_sit,
    total_fare,
    boarding_point,
    dropping_point
)
VALUES (1, 1, 1, "a1, a2", 2, 3000, 'uttara', 'kalitola');
