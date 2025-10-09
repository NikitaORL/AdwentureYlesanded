Create table Sales
(
Product nvarchar(50),
SaleAmount int
)
Go

Insert into Sales values ('iPhone', 500)
Insert into Sales values ('Laptop', 800)
Insert into Sales values ('iPhone', 1000)
Insert into Sales values ('Speakers', 400)
Insert into Sales values ('Laptop', 600)
Go


SELECT Product, SUM (SaleAmount) AS TotalSales FROM Sales
GROUP BY Product



SELECT Product, SUM (SaleAmount) AS TotalSales
FROM Sales
GROUP BY Product
HAVING SUM (SaleAmount) > 1000





SELECT Product, SUM (SaleAmount) AS TotalSales
FROM Sales
GROUP BY Product
HAVING Product in ('iPhone', 'Speakers')