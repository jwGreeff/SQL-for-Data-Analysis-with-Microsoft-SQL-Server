/*
Exercise 1:

Select all rows and the following columns from the HumanResources.Employee table:

 - OrganizationLevel (alias as "Organization Level")
 - JobTitle (alias as "Job Title")
 - VacationHours (alias as "Vacation Hours")
 - SickLeaveHours (alias as "Sick Leave Hours")

Sort your output first by OrganizationLevel in ascending order, 
then VacationHours in descending order.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [AdventureWorks2019].[HumanResources].[Employee]

ORDER BY [OrganizationLevel], [VacationHours] DESC


/*
Exercise 2:

Modify your query from Exercise 1 to use your column aliases, 
rather than the actual column names in the database table, in the ORDER BY.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [AdventureWorks2019].[HumanResources].[Employee]

ORDER BY [Organization Level], [Vacation Hours] DESC


/*
Exercise 3:

Modify your query from Exercise to use the position of the columns in the query output 
(for example, 1 for the first column) in the ORDER BY as opposed to the column aliases.
*/

SELECT
       [Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]

FROM [AdventureWorks2019].[HumanResources].[Employee]

ORDER BY 1, 3 DESC