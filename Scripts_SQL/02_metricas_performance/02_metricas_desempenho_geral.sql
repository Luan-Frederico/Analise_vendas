USE ContosoRetailDW

/* O objetivo aqui é medir as métricas, para avaliar a performance do negócio e extrair insights estratégicos.
(Perguntas de negócio)*/

--SELECT * FROM DimProduct
--SELECT TOP(100) * FROM FactSales
--SELECT * FROM DimCurrency
--SELECT DISTINCT CurrencyKey FROM FactSales - A tabela de vendas contém apenas 1 moeda, então não precisa agrupar pela moeda
--SELECT * FROM DimDate
--SELECT * FROM DimProductSubcategory
--SELECT * FROM DimProductCategory
--SELECT * FROM DimGeography
--SELECT * FROM DimStore

-- 1. DESEMPENHO GERAL

-- Receita, custo e lucro total 
SELECT
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita total',
	FORMAT(SUM(TotalCost), 'C', 'en-US') AS 'Custo total',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro total',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales

-- Análise anual e mensal da receita e lucro, e margem, e sazonalidade
--Anual
SELECT
	CalendarYear AS 'Ano',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita total',
	FORMAT(SUM(TotalCost), 'C', 'en-US') AS 'Custo total',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro total',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
GROUP BY CalendarYear
ORDER BY CalendarYear

--Mensal
SELECT
	CalendarMonthLabel AS 'Mês',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita total',
	FORMAT(SUM(TotalCost), 'C', 'en-US') AS 'Custo total',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro total',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimDate
	ON FactSales.DateKey = DimDate.Datekey
WHERE CalendarYear = 2007
GROUP BY CalendarMonthLabel, CalendarMonth
ORDER BY CalendarMonth
