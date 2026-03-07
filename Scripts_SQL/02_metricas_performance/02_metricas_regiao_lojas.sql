-- 3. ANÁLISE REGIONAL E POR LOJAS

-- Países e continentes por faturamento e lucro
-- Continente
SELECT 
	ContinentName AS 'Continente',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Faturamento',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
GROUP BY ContinentName
ORDER BY SUM(SalesAmount) DESC

-- País
SELECT 
	RegionCountryName AS 'País',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Faturamento',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
GROUP BY RegionCountryName
ORDER BY (SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100 DESC

-- Lojas por margem
SELECT
	StoreName AS 'Loja',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Faturamento',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
GROUP BY StoreName
ORDER BY (SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100 DESC

-- Regiões com altas vendas, mas baixa margem de lucro
-- Continente
SELECT 
	ContinentName AS 'Continente',
	FORMAT(SUM(SalesQuantity), 'N') AS 'Quantidade vendida',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
GROUP BY ContinentName
ORDER BY SUM(SalesQuantity) DESC

-- País
SELECT 
	RegionCountryName AS 'País',
	FORMAT(SUM(SalesQuantity), 'N') AS 'Quantidade vendida',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
GROUP BY RegionCountryName
ORDER BY SUM(SalesQuantity) DESC

-- Desempenho regional ao longo do tempo
-- Continente por ano
SELECT
	CalendarYear AS 'Ano',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita total',
	FORMAT(SUM(TotalCost), 'C', 'en-US') AS 'Custo total',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro total',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
WHERE ContinentName = 'Europe' --Alterar o nome do continente
GROUP BY CalendarYear, ContinentName
ORDER BY CalendarYear ASC

-- Continente por mês
SELECT
	CalendarMonthLabel AS 'Mês',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita total',
	FORMAT(SUM(TotalCost), 'C', 'en-US') AS 'Custo total',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro total',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
INNER JOIN DimStore
	ON FactSales.StoreKey = DimStore.StoreKey
		INNER JOIN DimGeography
			ON DimStore.GeographyKey = DimGeography.GeographyKey
WHERE CalendarYear = 2009 AND ContinentName = 'Europe' --Alterar o nome do continente e ano
GROUP BY CalendarMonthLabel, ContinentName, CalendarYear, CalendarMonth
ORDER BY CalendarMonth
