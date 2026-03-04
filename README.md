# Case 1 - Análise Estratégica de Vendas (SQL)

## Introdução

Este projeto tem como objetivo analisar o **desempenho comercial e financeiro** da empresa Contoso Retail, avaliando receita, custos, lucratividade, comportamento de clientes e performance regional. A análise foi conduzida integralmente em **SQL (SQL Server)**, explorando tabelas fato e dimensões para consolidação e interpretação dos dados.

O foco do projeto foi aplicar **lógica analítica e domínio em SQL** para extrair insights estratégicos e transformar dados brutos em informações relevantes para apoio à tomada de decisão.

## Problema de Negócio

A Contoso Retail, empresa do setor de varejo com atuação em diferentes regiões, vinha registrando crescimento em vendas, porém precisava entender com maior precisão quais **produtos, segmentos e mercados eram responsáveis pela geração efetiva de lucro.** O objetivo era transformar o grande volume de dados transacionais do Data Warehouse em informações estratégicas para direcionar decisões comerciais.

Para isso, buscou-se responder às seguintes questões:

### 1. Desempenho Geral

- Qual é a receita total, o custo total, o lucro bruto e a sua margem da empresa?

- Como a receita e o lucro evoluíram ao longo do tempo (análise mensal e anual)?

- A margem média apresenta estabilidade ou variações significativas entre períodos?

- Existem evidências de sazonalidade nas vendas?

### 2. Produtos e Rentabilidade

- Quais categorias e subcategorias mais contribuem para a receita total?

- Quais produtos apresentam maior margem de lucro?

- Existem produtos com alto volume de vendas, mas baixa rentabilidade?

- Como a performance varia entre marcas e linhas de produto?

### 3. Análise Regional e por Lojas

- Quais países e estados concentram maior faturamento e lucro?

- Quais lojas apresentam melhor desempenho em termos de margem?

- Existem regiões com alto volume de vendas, mas margem reduzida?

- Como o desempenho regional evolui ao longo do tempo?

### 4. Perfil de Clientes

- Quais segmentos de clientes geram maior ticket médio?

- Há concentração de receita em determinados grupos demográficos?

- Existe diferença de comportamento de compra entre perfis de clientes?

- Quais categorias são mais consumidas por determinados segmentos?

## Estrutura analítica (SQL Server)

Toda a análise foi conduzida em SQL Server, utilizando a base Contoso:

- **SELECT e WHERE**: Para filtrar e projetar colunas relevantes.

- **GROUP BY e HAVING**: Para agregações estratégicas.

- **JOIN's**

- **CTE's**: Para organização modular das consultas

- **Window Functions**: Para rankings e análises comparativas

- **CASE WHEN**: Para segmentações e classificações analíticas

Essas ferramentas juntas permitiram **análises dinâmicas e segmentadas**, com cálculos estatísticos e operacionais diretamente via **SQL**, sem dependência de outras linguagens.

## Resultados: Resumo das Análises e Principais Insights

### Desempenho geral

- No geral, a empresa Contoso registrou uma **receita de 12.4 bilhões de dólares** e um **lucro total de 7.05 bilhões de dólares**.

- Todos os anos (2007, 2008 e 2009) obtiveram uma **margem de lucro bastante próxima e positiva**, com mais de 50% de lucro. Isso significa que, em média, a cada ano, a receita corresponde mais que o dobro do custo.

- Já em termos de meses, no ano de 2007, a receita tende a ficar próxia de 400 bi, entretanto apresenta diminuições nos meses de junho, julho, agosto e setembro, com lucro oscilando perto de 200 bi. Em 2008, a receita sofre com variações, diminuições e aumentos, especialmente após a metade do ano, mas tende a ficar próxima dos 340 bi e lucro perto dos 200 bi. Por fim, em 2009, a receita varia em torno de 300 bi, com lucro em torno de 180 bi. 

- As margens de lucro estão bem próximas quando analisadas por ano, com 56%, com esta variando de 56 a 57% nos meses em 2007 e 2008, porém indo de 55 a 57% em 2009.

- As vendas (receitas e lucros) apresentam uma clara diminuição a partir do ano de 2007. Em ambos os anos, as vendas aumentam após os 3 primeiros meses, em média, com pequenas flutuações nos meses subsequentes.

### Produtos e Rentabilidade

- A subcategoria que mais contribi para a receita total da empresa são as **Filmadoras digitais (Camcorders)** com 1.335 trilhão de dólares, seguida dos **Projetores e Telas (Projectors and Screens)** com 1.107 tri. e as **Lavadoras e Secadores (Washers and Dryers)** com 1.066 trilhões.

- Por outro lado, os produtos mais vendidos são os da categoria **Eletrônicos (Home Appliances)** com 3.992 trilhões de dólares de receita, seguido pelos **Computadores (Computers)** com 3.209 trilhões.

- O produto que apresentou a maior margem de lucro foi **WWI Screen 125in M1611 White** com 66.85% de lucratividade, apesar de não ser o produto de maior receita. Além deste, há vários outros produtos que também possuem uma margem de lucro bastante elevada, na casa dos 66%, o que evidencia que a Contoso possui produtos altamente valiosos.

- **Há muitos produtos que apresentam grandes quantidades vendidas, mas têm baixa rentabilidade.** Por exemplo, existe um produto que tem 107.090 unidades e 53.92% de lucro, e outro produto que tem 106.034 unidades, mas uma lucratividade de 66.76%. Isso mostra que um produto, mesmo com quase mil unidades a menos, pode ser mais rentável, pois o custo de produção pode ser menor.

- A **performance das marcas varia entre volume de vendas e eficiência.** A Contoso se destaca por vender muito e ainda manter uma margem elevada, mostrando liderança sólida. Já Fabrikam e A. Datum chamam atenção pela maior margem de lucro, indicando maior eficiência e possível posicionamento mais estratégico. As demais marcas apresentam desempenho mais intermediário, com menor escala, mas margens relativamente estáveis.

## Conclusão

Este projeto demonstra como o **domínio de SQL e a aplicação de técnicas analíticas** permitem construir uma visão completa do desempenho empresarial — conectando dados operacionais a análises estratégicas.

O foco foi evidenciar **capacidade analítica, domínio técnico e visão de negócio**, transformando dados brutos em informações estruturadas para apoio à tomada de decisão baseada em fatos.






