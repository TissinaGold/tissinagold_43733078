CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Department VARCHAR(50),
    Marks INT
);
INSERT INTO Students (Name, Age, Department, Marks)
VALUES 
('Tissina', 19, 'Data Science', 85),
('Reshma', 20, 'AI & ML', 90),
('Akshaya', 19, 'Cybersecurity', 78),
('Kommi', 21, 'IoT', 82);
SELECT * FROM Students;
ALTER TABLE Students
ADD Email VARCHAR(100);
ALTER TABLE Students
MODIFY Marks DECIMAL(5,2);
ALTER TABLE Students
CHANGE Age StudentAge INT;
ALTER TABLE Students
DROP COLUMN Email;
SELECT * FROM Students;
ALTER TABLE Students RENAME column Name to Studentname;
UPDATE Students
SET Marks = Marks + 1
WHERE StudentID > 0;
UPDATE Students SET Department = 'CSE'
WHERE StudentID = 4;

START TRANSACTION;
INSERT INTO Students (Studentname, StudentAge, Department, Marks)
VALUES ('Akshaya', 20, 'AI', 75);
UPDATE Students
SET Marks = Marks + 5
WHERE StudentID = 1;
SAVEPOINT BeforeDelete;
DELETE FROM Students
WHERE Studentname = 'Akshaya';
ROLLBACK TO BeforeDelete;
COMMIT;
SELECT * FROM Students ;

