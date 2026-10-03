CREATE OR ALTER VIEW vw_FactSales AS
SELECT
    SalesKey,
    DateKey,
    channelKey,
    StoreKey,
    ProductKey,
    SalesQuantity,
    ReturnQuantity,
    ReturnAmount,
    TotalCost,
    SalesAmount
FROM FactSales 

SELECT * FROM vw_FactSales

CREATE OR ALTER VIEW vw_DimProduct AS
SELECT 
	ProductKey,
	ProductName,
	ProductSubcategoryKey,
	BrandName
FROM DimProduct

SELECT * FROM vw_DimProduct

CREATE OR ALTER VIEW vw_DimCustomer AS
SELECT 
	CustomerKey,
	GeographyKey,
	CONCAT(FirstName, ' ', LastName) AS 'Name',
	BirthDate,
	Gender,
	YearlyIncome
FROM DimCustomer
WHERE CustomerType = 'Person'

SELECT * FROM vw_DimCustomer

CREATE OR ALTER VIEW vw_DimStore AS
SELECT 
	StoreKey,
	StoreName,
	StoreType,
	ContinentName,
	RegionCountryName
FROM DimStore
INNER JOIN DimGeography ON DimStore.GeographyKey = DimGeography.GeographyKey

SELECT * FROM vw_DimStore

ALTER VIEW vw_DimProduct AS
SELECT	
	ProductKey,
	ProductName,
	BrandName,
	ProductSubcategoryName,
	ProductCategoryName
FROM DimProduct
INNER JOIN DimProductSubcategory ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	INNER JOIN DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey

SELECT * FROM vw_DimProduct

CREATE OR ALTER VIEW vw_FactOnlineSaless AS
SELECT
	OnlineSalesKey,
	DateKey,
	StoreKey,
	ProductKey,
	FactOnlineSales.CustomerKey,
	SalesOrderNumber,
	SalesQuantity,
	SalesAmount,
	ReturnQuantity,
	ReturnAmount,
	TotalCost
FROM FactOnlineSales
INNER JOIN DimCustomer ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'

SELECT * FROM vw_FactOnlineSaless 