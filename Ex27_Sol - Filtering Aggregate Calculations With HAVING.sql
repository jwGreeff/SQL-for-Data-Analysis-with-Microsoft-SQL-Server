/*
Exercise 1:

Identify all first names in the Person.Person table which are shared by more than 50 people.

Sort the output in descending order by the count of the name.
*/

SELECT 
       [FirstName],
	   [Count] = COUNT(*)
FROM [AdventureWorks2019].[Person].[Person]

GROUP BY [FirstName]

HAVING COUNT(*) > 50

ORDER BY 2 DESC


/*
Exercise 2:

Identify all products in the Production.Products table (by name) with total sales in the 
Purchasing.PurchaseOrderDetail table of less than $10,000.

Also include a column with a count of sales by product in your output.

Sort the output by total sales amount, in ascending order.

HINT: Total sales can be defined as the sum of line totals from the 
Purchasing.PurchaseOrderDetail table. Your code should look quite similar to an example presented in the video.
*/

SELECT 
[TotalSales] = SUM(A.[LineTotal]),
[SalesCount] = COUNT(*),
[Product] = B.[Name]

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
	ON A.[ProductID] = B.[ProductID]

GROUP BY B.[Name]

HAVING SUM(A.[LineTotal]) < 10000

ORDER BY [TotalSales]


/*
Exercise 3:

Modify your query from Exercise 2 by filtering out products whose name includes a number.

HINT: You will need to use a wildcard with LIKE; review the example code provided in the course section
on pattern matching with wildcards if you need a refresher.
*/

SELECT 
[TotalSales] = SUM(A.[LineTotal]),
[SalesCount] = COUNT(*),
[Product] = B.[Name]

FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
	ON A.[ProductID] = B.[ProductID]

WHERE B.[Name] NOT LIKE '%[0-9]%'

GROUP BY B.[Name]

HAVING SUM(A.[LineTotal]) < 10000

ORDER BY [TotalSales]

