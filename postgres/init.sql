create table contacts (
    uid serial primary key,
    email VARCHAR(80) not null,
    first_name VARCHAR(80) NOT NULL,
    last_name VARCHAR(80) NOT NULL
);
INSERT INTO contacts(email, first_name, last_name) VALUES('jim@example.com', 'Jim', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES('JLIN', 'John', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES('carol@example.com', 'Carol', 'Smith');
INSERT INTO contacts(email, first_name, last_name) VALUES('sam@example.com', 'Sam', 'Walko');

create table fav_colour (
  id serial primary key,
  uid integer REFERENCES "contacts"("uid"),
  colour VARCHAR(10)
);

INSERT INTO fav_colour(uid, colour) VALUES (1, 'green');
INSERT INTO fav_colour(uid, colour) VALUES (2, 'purp');
INSERT INTO fav_colour(uid, colour) VALUES (3, 'blue');
