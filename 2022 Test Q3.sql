#Question 3.1.1
-- Schema butterflies2022 was created and used
CREATE SCHEMA butterflies2022;
USE butterflies2022;

-- Table author was created with authorid as primary key
-- name attribute and lastname attribute were included as table author was created
-- name and surname both have a field size of 100 characters
CREATE TABLE author (
authorid INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name varchar(100),
lastname varchar(100)
);

# Question 3.1.2
-- lastname has been changed to surname
ALTER TABLE author
Change column lastname surname VARCHAR (100);

# Question 3.2
CREATE table paper (
paperid INT auto_increment NOT NULL PRIMARY KEY,
authorid INT,
title varchar(255),
description varchar(255),
date Date,
foreign key (authorid) REFERENCES author(authorid)
);

# Question 3.3
-- Insert values into author table
INSERT INTO author (authorid, name, surname) VALUES 
(1, 'Bob', 'Smith'),
(2, 'Sarah', 'McLaglenna');

SELECT * FROM author;

# Question 3.4 
-- changing the surname field in the author table
Update author
Set surname = 'McLaglen'
Where authorid = 2;
