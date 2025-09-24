# Question 3.1.1
CREATE SCHEMA shop_st10486933;
USE shop_st10486933;

# Question 3.1.2
Create Table Department (
departmentID INT auto_increment NOT NULL,
name VARCHAR(50),
Primary Key(departmentID)
);

# Question 3.1.3
Create Table Employee (
employeeID INT auto_increment NOT NULL,
departmentID INT not null,
name VARCHAR(50),
surname VARCHAR(50),
email VARCHAR(100),
Primary Key(employeeID),
foreign key (departmentID) REFERENCES Department(departmentID)
);

# Question 3.2
INSERT INTO Department (name) Values
('Shipping'),
('Customer Service');

INSERT INTO Employee (departmentID, name, surname, email) Values
(1, 'Annie', 'Williams', 'annie@shop.com'),
(2, 'Bob', 'Ntshinga', 'bob@shop.com');

SELECT * FROM Department;
SELECT * FROM Employee;
