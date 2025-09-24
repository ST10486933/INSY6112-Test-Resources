# Question 3.1.1
-- Schema was spelt incorrectly I changed to say SCHEMA and voyages and vessels should be one word
CREATE SCHEMA vesselsandvoyages;
USE vesselsandvoyages;

CREATE TABLE ship (
shipid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
imonumber char(11),
name varchar(255));

# Question 3.1.2
ALTER TABLE ship
MODIFY imonumber char(11) NOT NULL;

# Question 3.2
CREATE TABLE voyage (
voyageid INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
shipid INT,
Departuredate date,
Arrivaldate date,
foreign key (shipid) REFERENCES ship(shipid));

# Question 3.3
INSERT INTO ship (imonumber, name) VALUES ('IMO 1234567', 'Queen of the Seven Seas');
INSERT INTO voyage (shipid, Departuredate, Arrivaldate) VALUES (1, '2023-01-01', '2023-02-25');

# Question 3.4
UPDATE voyage
SET Arrivaldate = '2023-02-28'
WHERE voyageid = 1;
