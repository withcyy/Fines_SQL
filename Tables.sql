create table people(
	personal_id varchar(10) primary key,
	name varchar(100)	
);

create table fines(
	penalty_id serial primary key,
	personal_id varchar(10),
	penalty_type varchar(100),
	city varchar(100),
	amount decimal(10,2),
	FOREIGN KEY (personal_id) REFERENCES People(personal_id) ON DELETE CASCADE
);

INSERT INTO People (personal_id, name) VALUES 
('12345', 'John Doe'),
('67890', 'Jane Smith'),
('54321', 'Alice Johnson');

INSERT INTO fines (personal_id, penalty_type, city, amount) VALUES
('12345', 'Parking', 'New York', 100),
('12345', 'Late filing', 'Los Angeles', 200),
('67890', 'Late payment', 'Chicago', 150),
('54321', 'Speeding', 'Miami', 120),
('54321', 'Parking', 'Miami', 80);