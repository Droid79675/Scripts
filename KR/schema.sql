CREATE TABLE subsidiary (
                         id serial primary key,
                         city_name varchar(40) UNIQUE NOT NULL
);

CREATE TABLE loan (
					id serial primary key,
					quantity numeric CONSTRAINT positive_quantity CHECK (quantity > 0 AND quantity < 150000),
					start_date date NOT NULL,
					end_date date NOT NULL,
					active boolean NOT NULL,
					subsidiary_id int REFERENCES subsidiary(id)
);

CREATE TABLE client_to_loan (
								loan_id int REFERENCES loan(id),
								client_id int REFERENCES client(id)
);

CREATE TABLE client (
						id serial primary key,
						fullname varchar(60) NOT NULL,
						adress varchar(40) NOT NULL,
						document_id int REFERENCES document(id)
);

CREATE TABLE document (
						id serial primary key,
						type boolean NOT NULL,
						number numeric CHECK(LENGTH(CAST(number AS TEXT)) = 10)
);