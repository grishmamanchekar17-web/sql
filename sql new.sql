create database employee;
use employee;
CREATE TABLE Employee (
EmployeeId INT PRIMARY KEY,
FullName VARCHAR(45) NOT NULL,
Department VARCHAR(45) NOT NULL,
Salary float NOT NULL,
Gender VARCHAR(45) NOT NULL,
Age INT NOT NULL
);
select * from employee;
INSERT INTO Employee values
(1001,"John Doe","IT",35000,"Male",25),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28),
(1004, 'Mike Walker', 'Finance', 50000, 'Male', 28),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26);
select * from employee;
CREATE TABLE Projects (
ProjectId INT PRIMARY KEY AUTO_INCREMENT,
ProjectName VARCHAR(200) NOT NULL,
EmployeeId INT,
StartDate DATETIME,
EndDate DATETIME
);
select * from employee;
INSERT INTO Projects VALUES
(1,'Develop Ecommerse Website from scratch', 1003, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(2,'WordPress Website for our company', 1002, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(3,'Manage our Company Servers', 1007, NOW(), DATE_ADD(NOW(), INTERVAL 45 DAY)),
(4,'Hosting account is not working', 1009, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(5,'MySQL database from my desktop application', 1010, NOW(), DATE_ADD(NOW(), INTERVAL 15 DAY)),
(6,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY)),
(7,'Migrate web application and database to new server', NULL, NOW(), DATE_ADD(NOW(), INTERVAL 5
DAY)),
(8,'Android Application development', 1004, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
(9,'Hosting account is not working', 1001, NOW(), DATE_ADD(NOW(), INTERVAL 7 DAY)),
(10,'MySQL database from my desktop application', 1008, NOW(), DATE_ADD(NOW(), INTERVAL 15
DAY)),
(11,'Develop new WordPress plugin for my business website', NULL, NOW(), DATE_ADD(NOW(),
INTERVAL 10 DAY));
select * from Projects;
CREATE TABLE Address
(
AddressId INT PRIMARY KEY AUTO_INCREMENT,
EmployeeId INT,
Country VARCHAR(50),
State VARCHAR(50),
City VARCHAR(50)
);
select * from Address;
INSERT INTO Address (EmployeeId, Country, State, City) Values (1001, 'India', 'Odisha', 'BBSR');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1002, 'India', 'Maharashtra', 'Mumbai');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1003, 'India', 'Maharashtra', 'Pune');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1004, 'India', 'Odisha', 'Cuttack');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1005, 'India', 'Maharashtra', 'Nagpur');
INSERT INTO Address (EmployeeId, Country, State, City) Values (1006, 'India', 'Odisha', 'Cuttack');
delete from Address where AddressId=2;
alter table emp add location varchar (50);
select * from emp;
alter table employee add serial_no int first;
alter table employee add Title VARCHAR (50) after EmployeeID;
ALTER TABLE employee drop location;
alter table employee drop serial_no,drop Title;
alter table employee modify fullname varchar(55) unique;
desc employee;
alter table employee change column Department Dept varchar(40);
alter table Employee RENAME TO Emp;
desc emp;
truncate table Projects;
select * from Projects;
update emp set location = "thane";
use employee;
select * from emp;
use employee;
alter table emp add Title varchar(4);
update emp set Title ="mr.";
update emp set Title ="mrs" where gender ="female";
update emp set Salary="55000" where fullname ="Mary Smith";
desc emp;
select fullname, salary +1000000 from emp;
delete from emp where EmployeeId=1010;
select * from emp order by fullname desc;
select * from emp order by EmployeeId desc;
select * from emp order by fullname limit 3;
SELECT * FROM emp limit 2,5;
select * from emp limit 5 offset 2;
select * from emp where employeeid % 2= 0;
select * from emp where salary >50000;
select fullname,salary, (salary*0.05) as bonus from emp;
select max(salary)from emp;
select min(salary) from emp;
select avg(salary) from emp;
select sum(salary) from emp;
select * from Projects where employeeid is null;
select * from Projects where employeeid is not null;
select dept,count(dept) from emp group by dept;
select dept,count(*) from emp group by dept;
select gender,count(*) from emp group by gender;
select dept,sum(salary) from emp group by dept;
select dept,truncate(avg(age),0) from emp group by dept;
use employee;
select distinct dept,gender from emp;
select distinct age from emp;
select distinct gender from emp;
select* from emp where age not in (23,28);
select* from emp where age in (23,28);
select* from emp where salary between 40000 and 60000;
select* from emp where age between 25 and 28;
select* from emp where age=25;
select* from emp where employeeid in (1003,1004,1007,1010);
select * from emp where fullname like"P%";
select * from emp where fullname like"%Y";
select * from emp where fullname like"%I%";
select * from emp where fullname like"_I%";
select * from emp where fullname like "%N__";
select * from emp where fullname NOT like"P%";
SELECT*FROM Projects WHERE Projectname is not NULL;
select*from emp limit 5;
select*from emp order by age;
select DEPT, COUNT(*) FROM EMP
GROUP BY DEPT HAVING  COUNT(*)>3;
Select city,count(*) from address group by city having count(*)>1;
SELECT DATEDIFF(ENDDATE,STARTDATE) AS DUARATION FROM Projects;
SELECT DATEDIFF(ENDDATE,STARTDATE) AS DURATION, COUNT(*) FROM Projects
where employeeid>1004
group by datediff(enddate,startdate) having count(*)>=2;
select*from Projects;
use employee;
create table voter_list
(Voter_id int ,
Names varchar(30),
Age int check(Age>=18) );
desc voter_list;
select*from voter_list;
insert into voter_list values
(20067,"Anuja Patil",18);
select * from projects where employeeid is null;
create table voter_list2
(Voter_id int ,
Names varchar(30),
Age int check(Age>=18),
email_id varchar(30) default "dummy@gmail.com");
select*from voter_list2;
insert into voter_list2 values
(20067, "Anuja Patil", 18,"anujap@gmail.com"),
(20068,"Kamlesh Joshi",44,default);
show tables;
select* ,concat(fullname,"-",employeeid) as Specific_code from emp;
select fullname, lower(fullname) from emp;
select fullname,replace(fullname,"Mohanty","Kulkarni") as New_Name from emp;
update emp set fullname="Sambit Kulkarni" where employeeid=1008;
update emp set fullname="Anurag Kulkarni" where employeeid=1006;
select *from emp;
select fullname,length(fullname) from emp where employeeid=1008;
select substring("Mary Smith",2,3);
select fullname,substring(fullname,2,3) as partiall,
 length(substring(fullname, 2,3)) as length from emp;
 use employee;
create table trim_ex
(name varchar(60));
insert into trim_ex
values
("Sunil"),
("  Anjan"),
("Kunal  ");
select *, length(name),
 length(rtrim(name)) as right_trimmed,
 length(ltrim(name)) as left_trimmed,
 length(trim(name)) as both_trimmed from trim_ex;
 select fullname,reverse(fullname) from emp;
 select reverse("Grishma");
 select abs(-1706);
 select abs(datediff(startdate,enddate)) as duration from projects;
 select mod(12,5);
 select floor(14.9);
 select ceil(14.9);
 select truncate(1476.89674,-1);
 select power(4,2);
 select sqrt(169);
 select curdate();
 select now();
 select sysdate();
 select last_day(now());
select date_format(now(),"%b");
select date_format(now(),"%m");
select date_format(now(),"%y");
select date_format(now(),"%Y");
select date_format(now(),"%a %b");
select date_format(now(),"%a %b %d");
select date_format("2006-01-17","%D-%M%Y,%W") AS DATE;
select date_format("2026-09-24","%D-%M%Y,%W") AS DATE;
SELECT DATEDIFF(now(),"2006-01-17") as days;
select avg(salary) from emp where dept="IT";
select count(dept)from emp;
select count(salary) from emp where gender="male";
--join
use employee;
select emp.employeeid,fullname,city from emp 
left join
address
on emp.employeeid=address.employeeid;
select Projects.employeeid,projectname,state from Projects
left join 
address
on projects.employeeid=address.employeeid;
desc Projects;
select emp.employeeid,fullname,projectname,datediff(enddate,startdate) as duration from emp
left join 
projects
on emp.employeeid=projects.employeeid;
select fullname,projectname,state from emp as E
left join
Projects as P
on E.employeeid=P.employeeid
left join
address as A 
on A.employeeid=E.employeeid;
use employee;
select E.employeeid,fullname,projectname from emp as e
left join
projects as p
on E.employeeid=p.employeeid
union
select E.employeeid,fullname,projectname from emp as e
right join
projects as p
on E.employeeid=p.employeeid;
select emp.employeeid,fullname,projectname,city,datediff(enddate,startdate) as duration , dept,salary,gender,country from emp
left join
projects as p
on emp.employeeid=p.employeeid
left join
address as a
on emp.employeeid=a.employeeid;
select fullname,age from emp
where age=(select age from emp where employeeid=1003);
select fullname,dept from emp
where dept=(select dept from emp where employeeid=1001);
select projectname,datediff(enddate,startdate)as duration from projects
where datediff(enddate,startdate)=(select datediff(enddate,startdate)from projects where employeeid=1004);
select fullname,salary from emp where
salary=(select max(salary) from emp 
where salary<(select max(salary) from emp));
use employee;
select * from emp;
select salary from emp where fullname="james brown" or fullname="John Doe";
select fullname,salary from emp
where salary in (
select salary from emp where fullname="james brown" or fullname="John Doe")
and fullname not in ("James brown","john doe");
select * from emp where age< any (select age from emp where fullname in ("anurag kulkarni","mary smith"));
select*from emp where age<(select age from emp where fullname="Anurag kulkarni")
or
age<(select age from emp where fullname="mary smith");
select * from emp where age< all (select age from emp where fullname in ("anurag kulkarni","mary smith"));
select*from emp where age<(select age from emp where fullname="Anurag kulkarni")
and
age<(select age from emp where fullname="mary smith")



