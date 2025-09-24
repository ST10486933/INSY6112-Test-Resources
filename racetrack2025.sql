CREATE SCHEMA racetrack2025;
USE racetrack2025;

CREATE TABLE racetrack (
racetrack_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(250) CHARACTER SET utf8mb4 NOT NULL,
city VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL,
PRIMARY KEY (racetrack_id));

CREATE TABLE race (
race_id INT AUTO_INCREMENT NOT NULL,
racetrack_id INT NOT NULL,
name VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL,
date DATE NOT NULL,
PRIMARY KEY (race_id),
FOREIGN KEY (racetrack_id) REFERENCES racetrack(racetrack_id));

SELECT * FROM racetrack;
SELECT * FROM race;

INSERT INTO racetrack (name, city)
VALUES ("Red Bull Ring", "Spielberg"),
("Hungoring", "Budapest"),
("Circuit de Monaco", "Monaco");

INSERT INTO race (racetrack_id, name, date)
VALUES (1, "Austria 2020", "2020-07-05"),
(2, "Hungary 2020", "2020-07-19");

# alter command to add another column
ALTER TABLE racetrack
ADD COLUMN country VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL;

# alter command to change data types
ALTER TABLE racetrack
MODIFY COLUMN country VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL;

# alter command to change name and data type of column
ALTER TABLE racetrack
CHANGE COLUMN country countryNew VARCHAR(50) CHARACTER SET utf8mb4 NOT NULL;

# alter command to drop command to delete entire columns
ALTER TABLE racetrack
DROP COLUMN countryNew;

# modify the date to the new dat
UPDATE race
SET date = "2020-07-12"
WHERE race_id = 2;

# This command deletes individual rows of data
DELETE
FROM race
WHERE race_id = 2;

# delete the entire table
DROP TABLE race
