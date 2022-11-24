INSERT INTO airport(name, adress) VALUES
	('San Francisco International', 'San Francisco California'),
	('John F. Kennedy International', 'New York N.Y.'),
	('Harry Reid International', 'Las Vegas Nevada '),
	('Orlando International', 'Orlando Flaurida'),
	('Hartsfield-Jackson Atlanta International', 'Atlanta Georgia');

INSERT INTO plane(name, capacity, airport_id) VALUES
('Boeing 777', 380, 1),
('Boeing 747', 524, 2),
('Airbus A380', 853, 3),
('Airbus A330', 335, 4),
('Embraer E-Jet E-195', 108, 5),
('Boeing 707', 300, 5);

INSERT INTO crewmember(post, fullname) VALUES
('первый пилот', 'Зубенко Михаил Петрович'),
('второй пилот', 'John Mackarnac'),
('первый пилот', 'Joe Pikett'),
('первый пилот', 'Richard Vershi'),
('второй пилот', 'Erl Stone'),
('стюардесса', 'Mary Clapline'),
('первый пилот', 'Roman Burnovskiy');

INSERT INTO flight(flight_start, flight_end, flight_time, plane_id, airport_id_start, airport_id_destination) VALUES
('08:00:00','15:00:00',4200,1,1,3),
('10:00:00','13:00:00',2400,2,2,1),
('12:00:00','22:00:00',6000,3,3,5),
('14:00:00','02:00:00',7200,4,4,2),
('16:00:00','19:00:00',3000,5,5,3),
('18:00:00','23:00:00',4000,1,1,5);

INSERT INTO passenger(fullname, country, luggage, flight_id) VALUES
('Alexander Payne', 'USA', 50, 1),
('George Lucas', 'USA', 36, 2),
('Lars von Trier', 'Denmark', 34, 3),
('Oliver Stone', 'USA', 29, 4),
('David Fincher', 'USA', 43, 5),
('Christopher Nolan', 'USA', 47, 6),
('Wilfred Jackson', 'USA', 37, 1);

INSERT INTO flight_crewmember(flight_id, crewmember_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(6,7);
