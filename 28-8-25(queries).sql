use CompanydB;

#--questions:

Select Department ,avg(Salary) FROM Workers GROUP BY Department  HAVING avg(Salary)>100000;

Select Department ,max(Salary) FROM Workers GROUP BY Department  HAVING max(Salary)=500000;

Select Department,count(Department),sum(Salary) FROM Workers 
GROUP BY Department HAVING count(Department) >1 AND sum(Salary)>100000;

Select Department ,avg(Salary) FROM Workers GROUP BY Department  HAVING avg(Salary) BETWEEN 50000 
AND 200000;
