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

/* - Ao analisar os produtos da empresa Contoso, fica claro que a empresa concentra grande parte de seus produtos na própria marca Contoso, o que reforça uma estratégia voltada ao fortalecimento da marca interna. A classe Regular domina o mix de produtos, indicando que a maior parte da oferta está posicionada em um segmento mais acessível e de maior alcance.

- Observando os atributos visuais, as cores Preta, Branca e Prata aparecem com maior frequência, o que sugere uma preferência por padrões mais neutros e comercialmente seguros. A combinação Contoso – Regular – Preta é a mais recorrente no portfólio, mostrando um padrão dominante dentro da estrutura de produtos.

- Quando ampliamos a análise para categorias, percebe-se que Home Appliances e Computers concentram a maior quantidade de itens, enquanto Computer Accessories lidera entre as subcategorias. Isso indica que a empresa possui maior profundidade e variedade nas linhas relacionadas a tecnologia e eletrodomésticos, possivelmente refletindo o foco estratégico e o posicionamento comercial da operação.*/

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

/* - A análise da estrutura de lojas mostra que a Contoso possui uma operação amplamente ativa, com 294 lojas em funcionamento e apenas 12 inativas, indicando estabilidade e presença consolidada no mercado.

- Entre os formatos disponíveis, o modelo Store concentra a maior parte das lojas ativas, sugerindo que esse é o principal canal físico da empresa. Do ponto de vista geográfico, a América do Norte se destaca como a região com maior concentração de lojas, reforçando a importância estratégica desse mercado para a operação da Contoso.

- Em nível de país, os Estados Unidos lideram em número de lojas ativas, o que ajuda a explicar a predominância da América do Norte no cenário geral. Esse padrão indica que a empresa possui maior maturidade operacional e presença comercial mais consolidada nesse mercado específico.*/

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

/* - A análise da base de clientes mostra que a Contoso possui um perfil majoritariamente composto por pessoas físicas, que representam uma parcela significativamente maior em comparação às empresas. Isso indica que o foco principal da operação está direcionado ao consumidor final, e não ao mercado corporativo.

- Entre os clientes pessoa física, observa-se uma distribuição relativamente equilibrada entre os gêneros, com leve predominância masculina. Esse equilíbrio sugere que os produtos da empresa possuem apelo amplo, sem concentração excessiva em um único perfil de público.

- Em relação ao nível de escolaridade, a maioria dos clientes possui Bacharelado, seguida por clientes com Partial College, demonstrando um público com nível educacional intermediário a superior. Além disso, a distribuição entre homens e mulheres dentro dessas categorias é bastante equilibrada, o que reforça a diversidade do perfil de consumidores atendidos pela empresa.*/

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

/* - A análise de funcionários indica que a Contoso mantém uma estrutura operacional amplamente ativa, com praticamente todo o quadro funcional em exercício e um número muito reduzido de colaboradores inativos. Esse cenário sugere estabilidade organizacional e baixo nível de rotatividade no período analisado.

- Entre os funcionários ativos, observa-se predominância do gênero masculino, embora haja participação feminina relevante na composição da equipe. Essa distribuição pode refletir características específicas das áreas operacionais da empresa.

- Ao observar os departamentos, nota-se forte concentração na área de Produção, que reúne a maior parte dos colaboradores ativos. Esse dado é coerente com o modelo de negócio da Contoso, indicando que a operação depende fortemente de atividades produtivas para sustentar seu negócio e volume de vendas.*/


