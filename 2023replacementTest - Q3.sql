# Question 3.1.1
Create Schema newseditors;  
USE newseditors;  
# 'USING' was the incorrect command, so I changed it to USE
# 'newseditors' needed to be one word, not two, so I made 'news' and 'editors' into one word

Create Table newspaper (
newspaperid INT auto_increment NOT NULL PRIMARY KEY,
name VARCHAR (225) NOT NULL
);

# Question 3.1.2
ALTER TABLE newspaper
Modify name VARCHAR(255) NOT NULL;

# Question 3.2
Create Table editor (
editorid INT auto_increment PRIMARY KEY NOT NULL,
newspaperid INT,
name VARCHAR (255) NOT NULL,
startDate date,
foreign key (newspaperid) REFERENCES newspaper(newspaperid)
);

# Question 3.3
INSERT INTO newspaper (newspaperid, name) Values
(1, 'Daily News');

INSERT INTO editor (editorid, newspaperid, name, startDate) Values
(1, 1, 'Joe Bloggs', '2023-01-01');

# Question 3.4
UPDATE editor
SET startDate = '2023-01-03'
Where editorid = 1;

SELECT * FROM newspaper;
SELECT * FROM editor;
