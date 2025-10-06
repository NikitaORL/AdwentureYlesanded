USE AdventureWorksDW2019;

SELECT * FROM DimEmployee

CREATE INDEX IX_DimEmployee_BaseRate
ON DimEmployee(BaseRate ASC)
EXEC sp_help DimEmployee;
DROP INDEX DimEmployee.IX_DimEmployee_BaseRate

--------36 fail
create table [tblEmoloyees]
(
  [id] int primary key,
  [Name] nvarchar(50),
  [Salary] int,
  [Gender] nvarchar(10),
  [City] nvarchar(50)
)

insert into tblEmoloyees Values(3, 'John', 4500, 'Male', 'New York')
insert into tblEmoloyees Values(1, 'Sam',2500, 'Male', 'London')
insert into tblEmoloyees Values(4, 'Sara',5500, 'Female', 'Tokyo')
insert into tblEmoloyees Values(5, 'Todd',3100, 'Male', 'Toronto')
insert into tblEmoloyees Values(2, 'Pam',6500, 'Female', 'Sydney')

Select * from tblEmoloyees


