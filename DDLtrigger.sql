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