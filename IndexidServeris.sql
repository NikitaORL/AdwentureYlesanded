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
