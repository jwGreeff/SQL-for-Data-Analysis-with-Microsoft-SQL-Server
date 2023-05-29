/*
Exercise 1:

Select a derived column called "Price Category" from the "Production.Product" table such that:

If the list price is greater than $1,000, return "Premium".
If the list price is greater than $100 and less than $1,000, return "Mid-Range".
If the list price is less than $100, return "Value". This should be the default case.

Also include Name and ListPrice as columns in your output.
*/

SELECT 
	[Name]
   ,[ListPrice]
   ,[Price Category] = 
		CASE
			WHEN [ListPrice] >= 1000 THEN 'Premium'
			WHEN [ListPrice] > 100 THEN 'Mid-Range'
			ELSE 'Value'
		END

FROM [AdventureWorks2019].[Production].[Product]

/*
Exercise 2:

Select a derived column called "Employee Tenure" from the "HumanResources.Employee" table such that:

1.) If an employee is salaried, and has been with the company 10 or more years (calculated as the DATEDIFF in YEARs between the "HireDate" value and the current date), return "Non-Exempt - 10+ Years".
2.) If an employee is salaried, and has been with the company less than 10 years, return "Non-Exempt - < 10 Years".
3.) If an employee is NOT salaried, and has been with the company 10 or more years (calculated as the DATEDIFF in YEARs between the "HireDate" value and the current date), return "Exempt - 10+ Years".
4.) If an employee is NOT salaried, and has been with the company less than 10 years, return "Exempt - < 10 Years". This should be the default case.

Also include BusinessEntityID, HireDate, and SalariedFlag as columns in your output.
*/


SELECT [BusinessEntityID]
	  ,[HireDate]
	  ,[SalariedFlag]
	  ,[Employee Tenure] = 
		CASE
			WHEN DATEDIFF(YEAR,[HireDate],GETDATE()) >= 10 AND [SalariedFlag] = 1 THEN 'Non-Exempt 10+'
			WHEN DATEDIFF(YEAR,[HireDate],GETDATE()) < 10 AND [SalariedFlag] = 1 THEN 'Non-Exempt < 10'
			WHEN DATEDIFF(YEAR,[HireDate],GETDATE()) >= 10 AND [SalariedFlag] = 0 THEN 'Exempt 10+'
			ELSE 'Exempt < 10'
		END
FROM [AdventureWorks2019].[HumanResources].[Employee]

