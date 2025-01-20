SELECT 
	p.[ProductKey],
	p.[ProductAlternateKey] as ProductItemCode,

      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
	p.[EnglishProductName] as [Product Name],
	ps.[EnglishProductSubcategoryName] as [Sub Category],
	pc.[EnglishProductCategoryName] as [Product Category],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
	p.[Color] as [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
	p.[Size] as [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
	p.[ProductLine] as [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
	p.[ModelName] as [Product Model],
      --,[LargePhoto]
	p.[EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      isnull(p.Status,'Outdated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
		left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
		left join [AdventureWorksDW2019].[dbo].[DimProductCategory] as pc on pc.ProductCategoryKey = pc.ProductCategoryKey
  order by 
		p.ProductKey asc