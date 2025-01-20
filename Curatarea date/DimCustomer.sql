--SELECT 
--	c.customerskey as [CustomerKey],

--   --   ,[GeographyKey]
--   --   ,[CustomerAlternateKey]
--   --   ,[Title]

--	c.firstname as [FirstName],

--   --   ,[MiddleName]

--    c.lastname as [LastName],
--	c.firstname + ' ' + c.lastname as [Full Name],

--   --   ,[NameStyle]
--   --   ,[BirthDate]
--   --   ,[MaritalStatus]
--   --   ,[Suffix]

--   Case c.gender when 'M' then 'Male' when 'F' then 'Female' END AS Gender ,

--   --   ,[EmailAddress]
--   --   ,[YearlyIncome]
--   --   ,[TotalChildren]
--   --   ,[NumberChildrenAtHome]
--   --   ,[EnglishEducation]
--   --   ,[SpanishEducation]
--   --   ,[FrenchEducation]
--   --   ,[EnglishOccupation]
--   --   ,[SpanishOccupation]
--   --   ,[FrenchOccupation]
--   --   ,[HouseOwnerFlag]
--   --   ,[NumberCarsOwned]
--   --   ,[AddressLine1]
--   --   ,[AddressLine2]
--   --   ,[Phone]
--   c.[DateFirstPurchase] as DateFirstPurchase,

--   --   ,[CommuteDistance]

--	g.city as [Customer City]
--	from 
--		[AdventureWorksDW2019].[dbo].[DimGeography] AS c
--		left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on g.GeographyKey = c.GeographyKey
--	order by 
--	CustomerKey asc;

SELECT 
    c.CustomerKey as [CustomerKey],
    c.FirstName as [FirstName],
    c.LastName as [LastName],
    c.FirstName + ' ' + c.LastName as [Full Name],
    CASE c.Gender 
         WHEN 'M' THEN 'Male' 
         WHEN 'F' THEN 'Female' 
    END AS Gender,
    c.DateFirstPurchase as DateFirstPurchase,
    g.City as [Customer City]
FROM 
    [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
	LEFT JOIN  [AdventureWorksDW2019].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
ORDER BY 
    CustomerKey ASC;