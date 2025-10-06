u
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



-- 33 fail//////////////////////////////////////////////////////////////////////////////////////////
Create Function fn_GetEmployeeNameByid(@id int)

Returns nvarchar(20)
as
Begin
Return (Select Name from dbo.DimEmployee Where Id=@id)
End


Alter Function fn_GetEmployeeNameByid(@id int)

Returns nvarchar(20)
With Encryption
as
Begin
Return (Select Name from dbo.DimEmployee Where id=@id)
End


Alter Function fn_GetEmployeeNameByid(@id int)

Returns nvarchar(20)
With SchemaBinding
as
Begin
Return (Select Name from dbo.DimEmployee Where id=@id)
End

--Kontroll
select * from fn_GetEmployeeNameByid(5)


--34 fail //////////////////////////////////////////////////////////
Create Procedure spCreateLocalTempTable
as
begin
Create table #PersonDetails(Id int, Name nvarchar(20))

Insert into #PersonDetails Values(1, 'Mike')
Insert into #PersonDetails Values(2, 'John')
Insert into #PersonDetails Values(3, 'Todd')

Select * from #PersonDetails
End