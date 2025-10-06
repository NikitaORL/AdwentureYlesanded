USE AdventureWorksDW2019;

-- Loome tabeli õige nimega
CREATE TABLE [tblEmployees]
(
  [id] int PRIMARY KEY,      -- Esmane võti (Primary Key)
  [Name] nvarchar(50),      -- Töötaja nimi
  [Salary] int,             -- Töötaja palk
  [Gender] nvarchar(10),    -- Sugu
  [City] nvarchar(50)       -- Linn
);

-- Lisame andmed tabelisse
INSERT INTO tblEmployees VALUES(3, 'John', 4500, 'Male', 'New York');
INSERT INTO tblEmployees VALUES(1, 'Sam', 2500, 'Male', 'London');
INSERT INTO tblEmployees VALUES(4, 'Sara', 5500, 'Female', 'Tokyo');
INSERT INTO tblEmployees VALUES(5, 'Todd', 3100, 'Male', 'Toronto');
INSERT INTO tblEmployees VALUES(2, 'Pam', 6500, 'Female', 'Sydney');

-- Valime kõik read tabelist
SELECT * FROM tblEmployees;

-- Loome klasterindeksi veeru Name põhjal
CREATE CLUSTERED INDEX IX_tblEmployees_Name
ON tblEmployees(Name);

-- Loome mittek-lasterindeksi veergudele Gender (kahanedes) ja Salary (kasvavalt)
CREATE NONCLUSTERED INDEX IX_tblEmployees_Gender_Salary
ON tblEmployees(Gender DESC, Salary ASC);

-- Indeksite kustutamine
DROP INDEX IX_tblEmployees_Name ON tblEmployees;
DROP INDEX IX_tblEmployees_Gender_Salary ON tblEmployees;


----------------------------------------------------------------------------
--37
CREATE TABLE [tblEmployee]
(
  [id] int PRIMARY KEY,      
  [FirstName] nvarchar(50),
  [LastName] nvarchar(50),
  [Salary] int,             
  [Gender] nvarchar(10),    
  [City] nvarchar(50)       
);


Execute sp_helpindex tblEmployee

Insert into tblEmployee Values(1, 'Mike', 'Sandoz', 4500, 'Male', 'New York')
Insert into tblEmployee Values(1, 'John', 'Menco', 2500, 'Male', 'London')

SELECT * FROM tblEmployee;


Drop index tblEmployee.PK_tblEmplo_3214EC07236943A5

-----------------------------------------------------------------------------------
--38////////////
create  NonClustered Index IX_tblEmployee_salary
on tblEmployee (Salary Asc)

--kontroll
EXEC sp_helpindex 'tblEmployee';


select * from tblEmployee where Salary > 4000 and Salary < 8000

Delete from tblEmployee where salary = 2500
Update tblEmployee Set Salary = 9000 where Salary = 7500

Select * from tblEmployee order by salary 
Select * from tblEmployee order by Salary Desc

