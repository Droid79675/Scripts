INSERT INTO subsidiary(city_name) VALUES
	('Voronezh'),
	('Omsk');
	
INSERT INTO loan(quantity, start_date, end_date, active, subsidiary_id) VALUES
(30000,'2017-03-14','2017-05-17',TRUE,2),
(20000,'2017-01-10','2017-03-09',TRUE,2),
(25000,'2017-05-16','2017-07-14',TRUE,1),
(100000,'2017-08-02','2017-10-28',TRUE,1),
(70000,'2017-06-06','2017-08-24',FALSE,1),
(40000,'2017-02-16','2017-04-14',FALSE,2);

INSERT INTO document(type, number) VALUES
(TRUE, 9117258309),
(TRUE, 9005456841),
(FALSE, 7710563811),
(FALSE, 5624457832),
(TRUE, 4567831282);

INSERT INTO client(fullname, adress, document_id) VALUES
('Vasiliy Poberezhniy Grigorevich', '6th Kirovskaya St., 18', 1),
('Anna Zhukova Polevnikova','st. Vorovskogo, 49',2),
('Dmitriy Lezhev Ivanov','4th Transportnaya St., 34',3),
('Nikita Haylev Timopheevich','st. Kraynaya, 41',4),
('Annakentiy Lapuhov Andreivich', 'st. Tihaya, 32', 5);

INSERT INTO client_to_loan(loan_id, client_id) VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,4),
(6,5);