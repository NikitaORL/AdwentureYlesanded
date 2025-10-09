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