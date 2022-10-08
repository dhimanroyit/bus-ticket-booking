CREATE DATABASE bus_ticket_booking;
USE bus_ticket_booking;

CREATE TABLE users(
	user_id INT AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(255),
    password CHAR(32),
    PRIMARY KEY (user_id)
);

CREATE TABLE bus_operators(
	operator_id INT AUTO_INCREMENT,
    operator_name varchar(100),
    PRIMARY KEY (operator_id)
);

CREATE TABLE bus_types(
	bustype_id INT AUTO_INCREMENT,
    type ENUM('ac', 'non-ac'),
    PRIMARY KEY (bustype_id)
);

CREATE TABLE routes(
	route_id INT AUTO_INCREMENT,
	route_start varchar(100),
    route_end varchar(100),
    route_search varchar(255),
    PRIMARY KEY (route_id)
);

CREATE TABLE sits(
	sit_id INT AUTO_INCREMENT,
    available_sit INT DEFAULT 40,
    booked_sit INT DEFAULT 0,
    a1 BOOLEAN DEFAULT FALSE,
    a2 BOOLEAN DEFAULT FALSE,
    a3 BOOLEAN DEFAULT FALSE,
    a4 BOOLEAN DEFAULT FALSE,
    b1 BOOLEAN DEFAULT FALSE,
    b2 BOOLEAN DEFAULT FALSE,
    b3 BOOLEAN DEFAULT FALSE,
    b4 BOOLEAN DEFAULT FALSE,
    c1 BOOLEAN DEFAULT FALSE,
    c2 BOOLEAN DEFAULT FALSE,
    c3 BOOLEAN DEFAULT FALSE,
    c4 BOOLEAN DEFAULT FALSE,
    d1 BOOLEAN DEFAULT FALSE,
    d2 BOOLEAN DEFAULT FALSE,
    d3 BOOLEAN DEFAULT FALSE,
    d4 BOOLEAN DEFAULT FALSE,
    e1 BOOLEAN DEFAULT FALSE,
    e2 BOOLEAN DEFAULT FALSE,
    e3 BOOLEAN DEFAULT FALSE,
    e4 BOOLEAN DEFAULT FALSE,
    f1 BOOLEAN DEFAULT FALSE,
    f2 BOOLEAN DEFAULT FALSE,
    f3 BOOLEAN DEFAULT FALSE,
    f4 BOOLEAN DEFAULT FALSE,
    g1 BOOLEAN DEFAULT FALSE,
    g2 BOOLEAN DEFAULT FALSE,
    g3 BOOLEAN DEFAULT FALSE,
    g4 BOOLEAN DEFAULT FALSE,
    h1 BOOLEAN DEFAULT FALSE,
    h2 BOOLEAN DEFAULT FALSE,
    h3 BOOLEAN DEFAULT FALSE,
    h4 BOOLEAN DEFAULT FALSE,
    i1 BOOLEAN DEFAULT FALSE,
    i2 BOOLEAN DEFAULT FALSE,
    i3 BOOLEAN DEFAULT FALSE,
    i4 BOOLEAN DEFAULT FALSE,
    j1 BOOLEAN DEFAULT FALSE,
    j2 BOOLEAN DEFAULT FALSE,
    j3 BOOLEAN DEFAULT FALSE,
    j4 BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (sit_id)
);

CREATE TABLE buses(
	bus_id INT AUTO_INCREMENT,
    operator_id INT,
    bustype_id INT,
    sit_id INT,
    route_id INT,
    bus_no VARCHAR(100) UNIQUE,
    bus_title VARCHAR(150),
    bus_class VARCHAR(150),
    depature_time TIME(0),
    arrival_time TIME(0),
    fare INT,
    PRIMARY KEY (bus_id),
    FOREIGN KEY (operator_id) REFERENCES bus_operators(operator_id),
    FOREIGN KEY (bustype_id) REFERENCES bus_types(bustype_id),
    FOREIGN KEY (sit_id) REFERENCES sits(sit_id),
    FOREIGN KEY (route_id) REFERENCES routes(route_id)
);
    
CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT,
	first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(150),
    phone VARCHAR(20),
    age INT,
    gender ENUM('male', 'female', 'other'),
    address VARCHAR(255),
    PRIMARY KEY (customer_id)    
);

CREATE TABLE payments(
	payment_id INT AUTO_INCREMENT,
    amount INT,
    payment_date DATE,
    PRIMARY KEY (payment_id)
);

CREATE TABLE booked(
	booked_id INT AUTO_INCREMENT,
    customer_id INT,
    bus_id INT,
    payment_id INT,
    sit_no VARCHAR(150),
    total_sit INT,
    total_fare INT,
    boarding_point VARCHAR(150),
    dropping_point VARCHAR(150),
    
    PRIMARY KEY (booked_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (bus_id) REFERENCES buses(bus_id),
    FOREIGN KEY (payment_id) REFERENCES payments(payment_id)
);

          
		
            
            




























