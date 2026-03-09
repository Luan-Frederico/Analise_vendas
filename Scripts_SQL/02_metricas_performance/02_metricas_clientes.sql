-- 4. Perfil de clientes

-- Ticket médio e Receita por segmentos de clientes
--Por tipo de cliente
SELECT
	CustomerType AS 'Tipo de cliente',
	FORMAT(COUNT(OnlineSalesKey), 'N0') AS 'Número de compras',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	FORMAT(AVG(SalesAmount), 'C', 'en-US') AS 'Ticket médio'
FROM FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
GROUP BY CustomerType

-- Por gênero (pessoas físicas)
SELECT
	REPLACE(REPLACE(Gender, 'M', 'Masculino'), 'F', 'Feminino') AS 'Gênero',
	FORMAT(COUNT(OnlineSalesKey), 'N0') AS 'Número de compras',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	FORMAT(AVG(SalesAmount), 'C', 'en-US') AS 'Ticket médio'
FROM FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY Gender

-- Por renda 
WITH segmentos_renda AS (
	SELECT
	OnlineSalesKey,
		YearlyIncome,
		SalesAmount,
		TotalCost,
		CASE
			WHEN YearlyIncome <= 50000 THEN 'Classe Baixa'
			WHEN YearlyIncome <= 150000 THEN 'Classe Média Baixa'
			WHEN YearlyIncome <= 300000 THEN 'Classe Média'
			WHEN YearlyIncome <= 700000 THEN 'Classe Média Alta'
			WHEN YearlyIncome <= 1500000 THEN 'Classe Alta'
			WHEN YearlyIncome <= 5000000 THEN 'Classe Muito Alta'
			ELSE 'Elite'
		END AS 'Categoria'
	FROM FactOnlineSales
	INNER JOIN DimCustomer
		ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
	WHERE CustomerType = 'Person'
)

SELECT 
	Categoria,
	FORMAT(COUNT(OnlineSalesKey), 'N0') AS 'Número de compras',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	FORMAT(AVG(SalesAmount), 'C', 'en-US') AS 'Ticket médio'
FROM segmentos_renda
GROUP BY Categoria
ORDER BY [Ticket médio] DESC

-- Por idade
WITH Segmentos_idade AS (
	SELECT
		OnlineSalesKey,
		SalesAmount,
		TotalCost,
		DATEDIFF(YEAR, BirthDate, GETDATE()) AS 'Idade',
		CASE
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) BETWEEN 18 AND 25 THEN '18-25'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) <= 35 THEN '26-35'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) <= 45 THEN '36-45'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) <= 55 THEN '46-55'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) <= 65 THEN '56-65'
			WHEN DATEDIFF(YEAR, BirthDate, GETDATE()) <= 75 THEN '66-75'
			ELSE '76+'
		END AS 'Faixa etária'
	FROM FactOnlineSales
	INNER JOIN DimCustomer
		ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
	WHERE CustomerType = 'Person'
)

SELECT 
	[Faixa etária],
	FORMAT(COUNT(OnlineSalesKey), 'N0') AS 'Número de compras',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	FORMAT(ROUND(AVG(SalesAmount), 2), 'C', 'en-US') AS 'Ticket médio'
FROM Segmentos_idade
GROUP BY [Faixa etária]
ORDER BY [Ticket médio] DESC

-- Por ocupação
SELECT
	Occupation AS 'Ocupação',
	FORMAT(COUNT(OnlineSalesKey), 'N0') AS 'Número de compras',
	FORMAT(SUM(SalesAmount), 'C', 'en-US') AS 'Receita',
	FORMAT(SUM(SalesAmount - TotalCost), 'C', 'en-US') AS 'Lucro',
	FORMAT(ROUND(AVG(SalesAmount), 2), 'C', 'en-US') AS 'Ticket médio'
FROM FactOnlineSales
INNER JOIN DimCustomer
	ON FactOnlineSales.CustomerKey = DimCustomer.CustomerKey
WHERE CustomerType = 'Person'
GROUP BY Occupation
ORDER BY [Ticket médio] DESC
