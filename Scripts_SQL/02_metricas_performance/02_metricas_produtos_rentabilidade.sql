-- 2. PRODUTOS E RENTABILIDADE

-- Receita por Categoria e Subcategoria 
-- Subcategoria
SELECT
	ProductSubcategoryName AS 'Subcategoria',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
		INNER JOIN DimProductSubcategory
			ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
ORDER BY SUM(SalesAmount) DESC

-- Categoria
SELECT
	ProductCategoryName AS 'Categoria',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
INNER JOIN DimProductCategory
	ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GROUP BY ProductCategoryName
ORDER BY SUM(SalesAmount) DESC

-- Margem por produto
SELECT
	ProductName AS 'Nome do Produto',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
--HAVING SUM(SalesAmount) >= 1000000
ORDER BY (SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100 DESC

-- Quantidade de produtos e Rentabilidade
SELECT
	ProductName AS 'Nome do Produto',
	FORMAT(SUM(SalesQuantity), 'N0') AS 'Quantidade vendida',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY ProductName
--HAVING SUM(SalesQuantity) >= 20000
ORDER BY SUM(SalesQuantity) DESC

-- Produtos vendidos por marca
SELECT
	BrandName AS 'Marca',
	FORMAT(SUM(SalesQuantity), 'N0') AS 'Quantidade vendida',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	ROUND((SUM(SalesAmount - TotalCost) * 1.0 / SUM(SalesAmount)) * 100, 2) AS 'Margem de lucro (%)'
FROM FactSales
INNER JOIN DimProduct
	ON FactSales.ProductKey = DimProduct.ProductKey
GROUP BY BrandName
ORDER BY SUM(SalesAmount) DESC
