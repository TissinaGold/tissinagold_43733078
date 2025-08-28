use CompanydB;
SELECT * FROM Workers;

#order by 

SELECT * FROM Workers WHERE Department = 'IT' ORDER BY Salary;
SELECT * FROM Workers ORDER BY Salary Desc;
SELECT * FROM Workers ORDER BY WorkerId asc;

#group by

SELECT Department, AVG(Salary) 
FROM Workers
GROUP BY Department;

SELECT Department, COUNT(WorkerId) 
FROM Workers
GROUP BY Department;

#--QUESTIONS

SELECT COUNT(*) AS EmployeeCount
FROM Workers
WHERE Department NOT IN ('HR', 'Admin');

SELECT Department, MAX(Salary) AS HighestSalary
FROM Workers
GROUP BY Department;

SELECT * FROM Workers
ORDER BY WorkerId
LIMIT 10 OFFSET 5;

SELECT * FROM (
SELECT w.*, ROW_NUMBER() OVER (ORDER BY WorkerId) AS rn FROM Workers w
) AS temp
WHERE rn > 5;   



