# Case 1 - Análise Estratégica de Vendas (SQL)

## Introdução

Este projeto tem como objetivo analisar o **desempenho comercial e financeiro** da empresa Contoso Retail, avaliando receita, custos, lucratividade, comportamento de clientes e performance regional. A análise foi conduzida integralmente em **SQL (SQL Server)**, explorando tabelas fato e dimensões para consolidação e interpretação dos dados.

O foco do projeto foi aplicar **lógica analítica e domínio em SQL** para extrair insights estratégicos e transformar dados brutos em informações relevantes para apoio à tomada de decisão.

---

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

- Quais países e continentes concentram maior faturamento e lucro?

- Quais lojas apresentam melhor desempenho em termos de margem?

- Existem regiões com alto volume de vendas, mas margem reduzida?

- Como o desempenho regional evolui ao longo do tempo?

### 4. Perfil de Clientes

- Quais segmentos de clientes geram maior ticket médio?

- Há concentração de receita em determinados grupos demográficos?

- Existe diferença de comportamento de compra entre perfis de clientes?

---

## Estrutura analítica (SQL)

Toda a análise foi conduzida em *SQL Server*, utilizando a base Contoso:

- **SELECT e WHERE**: Para filtrar e projetar colunas relevantes.

- **GROUP BY e HAVING**: Para agregações estratégicas.

- **JOIN's**

- **CTE's**: Para organização modular das consultas

- **CASE WHEN**: Para segmentações e classificações analíticas

Essas ferramentas juntas permitiram **análises dinâmicas e segmentadas**, com cálculos estatísticos e operacionais diretamente via **SQL**, sem dependência de outras linguagens.

---

## Resultados: Resumo das Análises e Principais Insights

### 1. Desempenho geral

- A Contoso manteve **alta rentabilidade** ao longo do período, com margens acima de 55%, mesmo com uma leve queda no faturamento após 2007.

- No geral, o desempenho se mostra estável, indicando um **modelo de negócio sólido e bem estruturado.**

### 2. Produtos e Rentabilidade

- A receita se concentra em algumas categorias e produtos-chave, que funcionam como os principais motores de vendas.

- Também fica claro que **vender mais nem sempre significa lucrar mais**, já que há diferenças relevantes entre volume e margem.

- As marcas apresentam desempenhos distintos, refletindo **estratégias e posicionamentos diferentes no mercado.**

### Análise regional e por Lojas

- Existe uma **forte concentração de receita na América do Norte, principalmente nos Estados Unidos.**

- Outras regiões começam a ganhar espaço, mas ainda com **desafios em termos de rentabilidade.**

- Entre as lojas, nem sempre as que mais vendem são as mais lucrativas, o que reforça **diferenças de eficiência operacional.**

### Perfil de Clientes

- A análise do perfil de clientes revela **diferenças claras no comportamento de compra entre os segmentos.**

- O **faturamento** é puxado, principalmente, por clientes com **maior poder de compra e ticket médio mais alto.**

- Cada segmento contribui de forma diferente, **combinando volume de compras e valor por transação.**

---

## Tecnologias e Ferramentas utilizadas

| Tecnologia/Ferramenta | Finalidade                                                                            |
|:---------------------:|:-------------------------------------------------------------------------------------:|
| SQL Server            | Análise e Manipulação de dados, Criação de consultas SQL e Indicadores de performance |

---

## Conclusão

Este projeto demonstra como o **domínio de SQL e a aplicação de técnicas analíticas** permitem construir uma visão completa do desempenho empresarial — conectando dados operacionais a análises estratégicas.

O foco foi evidenciar **capacidade analítica, domínio técnico e visão de negócio**, transformando dados brutos em informações estruturadas para apoio à tomada de decisão baseada em fatos.






