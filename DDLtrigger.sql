use AdventureWorksDW2019


CREATE TRIGGER [Trigger_Name]
ON [Scope (Server | Database)]
FOR [EventType1, EventType2, EventType3, ...],
AS
BEGIN
-- Trigger Body --
END


CREATE TRIGGER trMyFirstTrigger
ON Database
FOR CREATE_TABLE

Create Table Test (Id int)

ALTER TRIGGER trMyFirstTrigger
ON Database
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
Print 'A table has just been created, modified or deleted'
END

ALTER TRIGGER trMyFirstTrigger

ON Database

FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE
AS
BEGIN
Rollback
Print 'You cannot create, alter or drop a table'
END