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