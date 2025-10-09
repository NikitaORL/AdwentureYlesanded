create table tblEmployee
(
Id int primary key,
name nvarchar(30),
salary int, 
gender nvarchar(10),
DepartmentId int
)

create table tblDepartment
(
DeptId int primary key,
DeptName nvarchar(20)
)


Insert into tblDepartment values (1, 'IT')
Insert into tblDepartment values (2, 'Payroll')
Insert into tblDepartment values (3,'HR')
Insert into tblDepartment values (4,'Admin')
Insert into tblEmployee values (1, 'John', 5000, 'Male', 3)
Insert into tblEmployee values (2, 'Mike', 3400, 'Male', 2)
Insert into tblEmployee values (3, 'Pam', 6000, 'Female', 1)
Insert into tblEmployee values (4, 'Todd', 4800, 'Male', 4)
Insert into tblEmployee values (5, 'Sara', 3200, 'Female', 1)
Insert into tblEmployee values (6, 'Ben', 4800, 'Male', 3)


SELECT 
    Id, 
    Name, 
    Salary, 
    Gender, 
    DeptName
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId;


CREATE VIEW vWEmployeesByDepartment AS
SELECT 
    Id, 
    Name, 
    Salary, 
    Gender, 
    DeptName
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId;

SELECT * from vWEmployeesByDepartment


CREATE VIEW vWITDepartment_Employees AS
SELECT 
    Id, 
    Name, 
    Salary, 
    Gender, 
    DeptName
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId
WHERE tblDepartment.DeptName = 'IT';


CREATE VIEW vWEmployeesNonConfidentialData AS
SELECT 
    Id, 
    Name, 
    Gender, 
    DeptName
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId;


CREATE VIEW vWEmployeesCountByDepartment AS
SELECT 
    DeptName, 
    COUNT(Id) AS TotalEmployees
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId
GROUP BY DeptName;
--40 fail ---------------------------------------

Create view vWEmployeesDataExceptSalary
as
Select Id, Name, Gender, DepartmentId from tblEmployee


Update vWEmployeesDataExceptSalary
Set Name = 'Mikey' Where Id = 2


CREATE VIEW vwEmployeeDetailsByDepartment AS
SELECT 
    Id, 
    Name, 
    Salary, 
    Gender, 
    DeptName
FROM tblEmployee
JOIN tblDepartment
ON tblEmployee.DepartmentId = tblDepartment.DeptId;


Select * from vwEmployeeDetailsByDepartment

UPDATE tblEmployee
SET DepartmentId = 1
WHERE Name = 'John';
--------------fail 87



CREATE TABLE TableA
(
    Id int PRIMARY KEY, 
    Name nvarchar(50), 
    Gender nvarchar(10)
);
GO

INSERT INTO TableA VALUES (1, 'Mark', 'Male');
INSERT INTO TableA VALUES (2, 'Mary', 'Female');
INSERT INTO TableA VALUES (3, 'Steve', 'Male');
INSERT INTO TableA VALUES (4, 'John', 'Male');
INSERT INTO TableA VALUES (5, 'Sara', 'Female');
GO

CREATE TABLE TableB
(
    Id int PRIMARY KEY,
    Name nvarchar(50),
    Gender nvarchar(10)
);
GO

INSERT INTO TableB VALUES (4, 'John', 'Male');
INSERT INTO TableB VALUES (5, 'Sara', 'Female');
INSERT INTO TableB VALUES (6, 'Pam', 'Female');
INSERT INTO TableB VALUES (7, 'Rebeka', 'Female');
INSERT INTO TableB VALUES (8, 'Jordan', 'Male');
GO