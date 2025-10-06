USE AdventureWorksDW2019;

SELECT * FROM DimEmployee

CREATE INDEX IX_DimEmployee_BaseRate
ON DimEmployee(BaseRate ASC)
EXEC sp_help DimEmployee;
DROP INDEX DimEmployee.IX_DimEmployee_BaseRate

--------36 fail
