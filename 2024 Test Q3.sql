CREATE schema st10486933_2024;
USE st10486933_2024;

# Question 3.1
Create Table customer (
customerID INT auto_increment not null,
name VARCHAR (50),
email VARCHAR(100),
primary key (customerID)
);

# Question 3.2
Create Table orders (
orderID INT auto_increment NOT NULL,
orderNumber INT NOT NULL,
customerID INT NOT NULL, 
orderDate Date NOT NULL,
PRIMARY key (orderID),
FOREIGN key (customerID) REFERENCES customer(customerID)
);

# Question 3.3 
INSERT INTO customer (name, email) VALUES
('Debbie Duncan', 'dduncan@yahoo.com');

INSERT INTO orders (orderNumber, customerID, orderDate) Values
(020149, 1, '2024-02-14');

SELECT * FROM customer;
SELECT * FROM orders;

# Question 3.4
UPDATE orders
SET orderDate = '2024-02-13'
WHERE orderID = 1;

# Question 3.5
DELETE 
FROM orders
WHERE orderID = 1;
