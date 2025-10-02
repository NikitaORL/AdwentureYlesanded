--funktsioonid
select * from DimEmployee

create Function fn_ILTVF_GetEmployees()
Returns Table
as
Return (Select EmployeeKey, FirstName,
Cast(BirthDate as Date) as DOB
FROM dbo.DimEmployee);
--käivita
select * from fn_ILTVF_GetEmployees();