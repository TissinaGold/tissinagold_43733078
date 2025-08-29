CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    StudentID INT
);

-- Insert Students
INSERT INTO Students VALUES (1, 'Tiss', 20);
INSERT INTO Students VALUES (2, 'Teo', 22);
INSERT INTO Students VALUES (3, 'Lia', 23);
INSERT INTO Students VALUES (4, 'Mami', 21);

-- Insert Courses
INSERT INTO Courses VALUES (101, 'Math', 1);
INSERT INTO Courses VALUES (102, 'Science', 2);
INSERT INTO Courses VALUES (103, 'History', 5); 

SELECT Student.Name, Courses.CourseName
FROM Students
INNER JOIN Courses ON Students.StudentID = Courses.StudentID;

SELECT Students.Name, Courses.CourseName
FROM Students
LEFT JOIN Courses ON Students.StudentID = Courses.StudentID;

SELECT Students.Name, Courses.CourseName
FROM Students
RIGHT JOIN Courses ON Students.StudentID = Courses.StudentID;

SELECT Students.Name, Courses.CourseName
FROM Students
CROSS JOIN Courses;

SELECT Students.Name, Courses.CourseName
FROM Students
FULL JOIN Courses
ON Students.StudentID = Courses.StudentID;


