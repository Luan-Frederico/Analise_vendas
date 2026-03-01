USE ContosoRetailDW

/* Explorar características estruturais do negócio antes de medir desempenho.
O objetivo aqui é entender o perfil da empresa, permitindo extrair pequenos insights.*/

/*SELECT * FROM DimProduct
SELECT * FROM DimChannel
SELECT * FROM DimEmployee
SELECT * FROM DimStore
SELECT * FROM DimCustomer
SELECT * FROM DimGeography
SELECT * FROM DimProductSubcategory
SELECT * FROM DimProductCategory*/

-- PRODUTOS
-- Agrupar produtos por marca
SELECT
	BrandName AS 'Marca',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
GROUP BY BrandName
ORDER BY COUNT(*) DESC

-- Agrupar produtos por classe
SELECT
	ClassName AS 'Classe',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
GROUP BY ClassName
ORDER BY COUNT(*) DESC

-- Agrupar produtos por cor
SELECT
	ColorName AS 'Cor',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
GROUP BY ColorName
ORDER BY COUNT(*) DESC

-- Agrupar produtos por marca, classe e cor + filtragem
SELECT
	BrandName AS 'Marca',
	ClassName AS 'Classe',
	ColorName AS 'Cor',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
--WHERE BrandName = 'Contoso'
GROUP BY BrandName, ClassName, ColorName
--HAVING COUNT(*) > 40
ORDER BY COUNT(*) DESC

-- Produtos por subcategoria
SELECT 
	ProductSubcategoryName AS 'Subcategoria',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GROUP BY ProductSubcategoryName
ORDER BY COUNT(*) DESC

-- Produtos por categoria
SELECT
	ProductCategoryName AS 'Categoria',
	COUNT(*) AS 'Qtd. Produtos'
FROM DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
		INNER JOIN DimProductCategory
			ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey
GROUP BY ProductCategoryName
ORDER BY COUNT(*) DESC

/* As análises dos produtos permite concluirmos que:
- Contoso é a marca que mais contém produtos com 710;
- Regular é a classe que mais contém produtos com 1275;
- Preta é a cor que mais contém produtos (602), seguido de Branco (505) e Prata (417);
- A combinação da marca Contoso, da classe Regular e da cor Preta contém as maiores quantidades de produtos (84), seguido de Contoso, Regular e Branco com 80 produtos;
- Computers Accessories é a subcategoria que mais possui produtos, com um total de 201;
- Home Appliances é a categoria que mais contém produtos (661), seguida de Computers com 606 produtos.*/

-- LOJAS
-- Lojas abertas/fechadas
SELECT
	REPLACE(REPLACE(Status, 'On', 'Ativa'), 'Off', 'Não ativa') AS 'Status',
	COUNT(*) AS 'Qtd. Lojas'
FROM DimStore
GROUP BY Status

-- Lojas por tipo
SELECT
	StoreType AS 'Tipo de loja',
	COUNT(*) AS 'Qtd. Lojas'
FROM DimStore
WHERE Status = 'On'
GROUP BY StoreType
ORDER BY COUNT(*) DESC

-- Lojas por continente
SELECT
	ContinentName AS 'Continente',
	COUNT(*) AS 'Qtd. Lojas'
FROM DimStore
INNER JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey
WHERE Status = 'On'
GROUP BY ContinentName
ORDER BY COUNT(*) DESC

-- Lojas por país
SELECT
	RegionCountryName AS 'País',
	COUNT(*) AS 'Qtd. Lojas'
FROM DimStore
INNER JOIN DimGeography
	ON DimStore.GeographyKey = DimGeography.GeographyKey
WHERE Status = 'On'
GROUP BY RegionCountryName
ORDER BY COUNT(*) DESC

/* As análises das lojas permite concluirmos que:
- Há 294 lojas ativas e 12 lojas inativas no sistema;
- Store é o tipo de loja que apresenta a maior quantidade de lojas ativas;
- O continente Norte-americano (North America) é o continente que apresenta a maior quantidade de lojas ativas;
- Estados Unidos (United States) é o país que apresenta a maior quantidade de lojas ativas, justificando o motivo de a América do Norte ser o continente com mais lojas ativas.*/

-- CLIENTES
-- Clientes físicos ou empresas
SELECT
	CustomerType AS 'Tipo de cliente',
	COUNT(*) AS 'Quantidade'
FROM DimCustomer
GROUP BY CustomerType

-- Clientes por sexo
SELECT
	Gender AS 'Gênero',
	COUNT(*) AS 'Qtd. Clientes'
FROM DimCustomer
WHERE CustomerType = 'Person'
GROUP BY Gender

-- Clientes por educação
SELECT
	Education AS 'Nível de escolaridade',
	COUNT(*) AS 'Qtd. Clientes'
FROM DimCustomer
WHERE CustomerType = 'Person'
GROUP BY Education
ORDER BY COUNT(*) DESC

-- Clientes por educação e sexo
SELECT
	Education AS 'Nível de escolaridade',
	Gender AS 'Gênero',
	COUNT(*) AS 'Qtd. Clientes'
FROM DimCustomer
WHERE CustomerType = 'Person'
GROUP BY Education, Gender
ORDER BY COUNT(*) DESC

/* As análises dos clientes permite concluirmos que:
- Na empresa Contoso, a maioria dos clientes são pessoas físicas (Person) com 18484, em contrapartida com as 385 empresas (Company);
- Dentre os clientes físicos, a maioria destes são do sexo Masculino com 9351 pessoas, contra 9133 do sexo feminino;
- Analisando os níveis de escolaridade dos clientes físicos, a maioria são Bacharelado com 5356 pessoas, sendo 2728 homens e 2628 mulheres, seguido de Partial College com 5064 clientes, sendo 2542 mulheres e 2522 homens.*/

-- FUNCIONÁRIOS
-- Funcionários ativos
SELECT
	REPLACE(REPLACE(Status, 'Current', 'Ativo'), 'NULL', 'Não ativo') AS 'Status',
	COUNT(*) AS 'Qtd. Funcionários'
FROM DimEmployee
GROUP BY Status

-- Funcionários por gênero
SELECT
	Gender AS 'Gênero',
	COUNT(*) AS 'Qtd. Funcionários'
FROM DimEmployee
WHERE Status = 'Current'
GROUP BY Gender

-- Funcionários por área/setor
SELECT
	DepartmentName AS 'Departamento',
	COUNT(*) AS 'Qtd. Funcionários'
FROM DimEmployee
WHERE Status = 'Current'
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC

/* As análises dos funcionários permite concluirmos que:
- Na empresa Contoso, a maioria dos funcionários estão ativos na empresa com 287 contra apenas 6 funcionários inativos;
- Dentre os funcionários ativos, a maioria destes são do sexo Masculino com 203 funcionários, contra 84 do sexo feminino;
- Analisando os diferentes setores de atuação dos funcionários ativos, a maioria são da área de Produção (Production) com 176 funcionários.*/
