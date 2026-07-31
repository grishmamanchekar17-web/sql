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