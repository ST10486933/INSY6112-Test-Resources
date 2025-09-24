CREATE SCHEMA college_st10486933;
USE college_st10486933;

CREATE TABLE Department (
department_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL,
PRIMARY KEY (department_id));

CREATE TABLE Lecturer (
lecturer_id INT AUTO_INCREMENT NOT NULL,
department_id INT NOT NULL,
name VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL,
surname VARCHAR(100) CHARACTER SET utf8mb4 NOT NULL,
phoneNumber CHAR(100) CHARACTER SET utf8mb4 NOT NULL,
PRIMARY KEY (lecturer_id),
FOREIGN KEY (department_id) REFERENCES Department(department_id));

SELECT * FROM Department;
SELECT * FROM Lecturer;

INSERT INTO Department (department_id, name)
VALUES (1, "Information and Communications Technology"),
(2, "Commerce");

INSERT INTO Lecturer (lecturer_id, department_id, name, surname, phoneNumber)
VALUES (1, "Bob", "Jobs", "0123456789"),
(2, "Sue", "McDonald", "0110123456" );
