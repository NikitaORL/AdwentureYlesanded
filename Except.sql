use AdventureWorksDW2019
Select Id, Name, Gender From TableA
Except Select Id, Name, Gender From TableB

INSERT INTO TableA VALUES (1, 'Mark', 'Male');

SELECT Id, Name, Gender FROM TableA
EXCEPT
SELECT Id, Name, Gender FROM TableB;



Select Id, Name, Gender From TableA Except
Select Id, Name From TableB