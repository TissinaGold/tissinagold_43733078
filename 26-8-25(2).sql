CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE Workers (
    WorkerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
INSERT INTO Workers (WorkerID, FirstName, LastName, Department, Salary) VALUES
(1, 'Vikram', 'Sharma', 'IT', 250000),
(2, 'Arjun', 'Kumar', 'HR', 150000),
(3, 'Vanya', 'Singh', 'Finance', 220000),
(4, 'Rahul', 'Verma', 'Admin', 180000),
(5, 'Vivek', 'Patel', 'IT', 300000),
(6, 'Sneha', 'Rao', 'Marketing', 90000),
(7, 'Vikash', 'Gupta', 'Sales', 200000),
(8, 'Anita', 'Das', 'HR', 80000),
(9, 'Vishal', 'Mehta', 'Finance', 270000);
SELECT *FROM Workers
WHERE Department NOT IN ('HR', 'Admin')
AND Salary BETWEEN 70000 AND 300000;
SELECT *FROM Workers
WHERE FirstName LIKE 'V%' AND Salary >= 200000;
SELECT * FROM Workers WHERE Department NOT IN ('Admin') AND Salary < 100000;
SELECT MAX(Salary) AS MaximumSalary FROM Workers;
SELECT MIN(Salary) AS MinimumSalary FROM Workers;
SELECT SUM(Salary) AS TotalSalary
FROM Workers;

SELECT MIN(Salary) AS MinSalaryIT, MAX(Salary) AS MaxSalaryIT, SUM(Salary) AS TotalSalaryIT
FROM Workers WHERE Department = 'IT';
 
#EXAMPLE
SELECT AVG(Salary) AS AvgSalaryAdmin FROM Workers
WHERE Department = 'Admin';
SELECT SUM(Salary) AS TotalSalary FROM Workers
WHERE Department IN ('HR', 'Admin');
SELECT COUNT(*) AS Count FROM Workers
WHERE FirstName LIKE 'V%'; 
SELECT SUM(Salary) AS TotalSalary FROM Workers
WHERE Salary BETWEEN 50000 AND 200000;