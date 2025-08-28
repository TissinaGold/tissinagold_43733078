use CompanydB;

#--questions:

Select Department ,avg(Salary) FROM Workers GROUP BY Department  HAVING avg(Salary)>100000;

Select Department ,max(Salary) FROM Workers GROUP BY Department  HAVING max(Salary)=500000;

Select Department,count(Department),sum(Salary) FROM Workers 
GROUP BY Department HAVING count(Department) >1 AND sum(Salary)>100000;

Select Department ,avg(Salary) FROM Workers GROUP BY Department  HAVING avg(Salary) BETWEEN 50000 
AND 200000;

#sub query:
use CompanydB;

create table award_winners(
id int,
name varchar(25),
award_name varchar(30));

insert into award_winners values(001,'Karthick','Volleyball winners'),(002,'Gopi','Basketball Runners'),(003,'Adib','Oscar winners'),
(004,'Harij','English SpellBee 2nd Runner-up'),(005,'Loki','Volleyball winners'),(006,'Sakthi','Badminton Nationals runners'),
(007,'Iqhlas','Debug winners'),(008,'AK','Basketball runners'),(009,'Kamal','Hackathon runners'),
(010,'Barath','Hackathon winners');

select * from award_winners;

create table students(
id int,
name varchar(25));

insert into students values(005,'Loki'),(1001,'Srihari'),(1003,'Dinesh'),(001,'Karthick'),(1005,'Tharun'),
(1006,'Vamsi'),(1007,'Monish'),(1008,'Rohith'),(1009,'Alwyn'),(1010,'Akash');

select * from students;

select * from students 
where id=(select id from award_winners where id=5);

select * from students 
where id=(select id from award_winners where name="karthick");

select * from award_winners
where id=(select id from students where id=1);

select * from award_winners
where id=(select id from students where name="Loki");
