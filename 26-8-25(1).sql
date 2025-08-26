CREATE DATABASE Operators;
USE Operators;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Marks INT,
    City VARCHAR(50)
);
INSERT INTO Students (StudentID, Name, Age, Marks, City) VALUES
(1, 'Alicey', 18, 85, 'Chennai'),
(2, 'Bobie', 20, 67, 'Mumbai'),
(3, 'Charl', 19, 45, 'Delhi'),
(4, 'Davids', 21, 92, 'Chennai'),
(5, 'Evan', 18, 75, 'Bangalore');
SELECT * FROM Students;
SELECT * FROM Students WHERE Marks = 85;
SELECT * FROM Students WHERE Marks != 85;
SELECT * FROM Students WHERE Marks > 70;
SELECT * FROM Students WHERE Marks < 70;
SELECT * FROM Students WHERE Age >= 19;
SELECT * FROM Students WHERE Age <= 18;
SELECT * FROM Students WHERE Age > 18 AND Marks > 70;
SELECT * FROM Students WHERE City = 'Chennai' OR Marks > 90;
SELECT * FROM Students WHERE NOT City = 'Delhi';
SELECT * FROM Students WHERE Name = 'Alicey' AND Marks < 90;

SELECT * FROM Students
WHERE Department IN ('Data Science', 'AI & ML');
SELECT * FROM Students
WHERE Department NOT IN ('Data Science', 'AI & ML');
UPDATE Students
SET Marks = Marks + 2
WHERE StudentID IN (1, 3, 5);
DELETE FROM Students
WHERE StudentID NOT IN (2, 4);
SELECT * FROM Students;

---  set operators 

SELECT * FROM Students 
WHERE City IN ('Chennai', 'Delhi');
SELECT * FROM Students  
WHERE City NOT IN ('Mumbai', 'Delhi');
SELECT * FROM Students 
WHERE City IN ('Chennai', 'Delhi') and Name = 'Alicey';

SELECT * FROM Students WHERE Age BETWEEN 20 AND 25;
SELECT * FROM Students WHERE Age BETWEEN 19 AND 25 AND Marks > 80;
SELECT * FROM Students WHERE Marks BETWEEN 69 AND 89 AND City IN ('Chennai','Delhi');