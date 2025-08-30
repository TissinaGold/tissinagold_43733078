CREATE DATABASE Company;
USE Company;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    Department VARCHAR(50)
);
INSERT INTO Employee(EmpID, FirstName, Department)VALUES(1, 'John', 'HR'),(2, 'Alice', 'Finance'),(3, 'Robert', 'IT');



CREATE DATABASE crud;
use crud;
CREATE TABLE user1 (
	sl_no INT,
	name VARCHAR(100) ,
	email VARCHAR(100) 
);
INSERT INTO user1 (sl_no, name, email) VALUES 
(1, 'Jinu', 'jinu@gmail.com'),
(2, 'Jawad', 'jawad@gmail.com'),
(3, 'Arun', 'arun@gmail.com'),
(4, 'Meena', 'meena@gmail.com'),
(5, 'Ravi', 'ravi@yahoo.com');

show tables from crud;
select * from user1;



