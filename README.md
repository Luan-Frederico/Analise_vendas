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

## Estrutura analítica (SQL)

Toda a análise foi conduzida em *SQL Server*, utilizando a base Contoso:

- **SELECT e WHERE**: Para filtrar e projetar colunas relevantes.

- **GROUP BY e HAVING**: Para agregações estratégicas.

- **JOIN's**

- **CTE's**: Para organização modular das consultas

- **CASE WHEN**: Para segmentações e classificações analíticas

Essas ferramentas juntas permitiram **análises dinâmicas e segmentadas**, com cálculos estatísticos e operacionais diretamente via **SQL**, sem dependência de outras linguagens.

## Resultados: Resumo das Análises e Principais Insights

### Desempenho geral

- Em geral, no período analisado, a Contoso registrou aproximadamente **US$ 12,4 bilhões em receita** e **US$ 7,05 bilhões em lucro**, mantendo uma **margem de lucro consistentemente acima de 55%.** Esse resultado indica um modelo de negócio bastante lucrativo, em que a receita supera significativamente os custos.

- Apesar da **forte rentabilidade**, observa-se uma leve tendência de queda nas vendas ao longo dos anos, com redução gradual na receita e no lucro após 2007. Ainda assim, o comportamento mensal das vendas mostra um padrão relativamente estável, com crescimento após os primeiros meses do ano e pequenas oscilações ao longo dos meses seguintes.

### Produtos e Rentabilidade

- Algumas subcategorias concentram grande parte do faturamento da empresa, com destaque para **Camcorders, Projectors and Screens e Washers and Dryers**, que aparecem entre os produtos que mais geram receita.

- Em nível mais amplo, as categorias **Home Appliances e Computers** lideram o faturamento total, reforçando seu papel como os principais motores de vendas da Contoso.

- A análise também mostra que **alto volume de vendas nem sempre significa maior rentabilidade.** Alguns produtos vendem muito, mas possuem margens menores, enquanto outros apresentam menor volume de vendas, porém maior lucratividade. Isso sugere que fatores como custos de produção, posicionamento de mercado e estratégia de preços influenciam fortemente o desempenho financeiro dos produtos.

- Em relação às marcas, a **Contoso se destaca pelo grande volume de vendas**, demonstrando forte presença no mercado. Por outro lado, marcas como Fabrikam e A. Datum apresentam margens de lucro mais elevadas, indicando maior eficiência ou posicionamento mais estratégico.

### Análise regional e por Lojas

- A **América do Norte domina o desempenho global**, concentrando o maior volume de vendas, receita e lucro. Esse resultado é fortemente impulsionado pelos **Estados Unidos**, que representam a maior parte das vendas da empresa.

- Apesar de a margem de lucro ser semelhante entre os países (em torno de 56%), existe grande diferença no volume de vendas. Os **Estados Unidos vendem cerca de quatro vezes mais produtos que o segundo maior mercado, demonstrando forte concentração geográfica da demanda.**

- Entre as **lojas, algumas apresentam alta rentabilidade mesmo com menor volume de vendas**, indicando que nem sempre as unidades mais lucrativas são as que geram maior faturamento.

- Observando a evolução ao longo do tempo, percebe-se **queda nas vendas na América do Norte e na Europa**, enquanto a **Ásia apresenta crescimento em receita e lucro, porém com redução na margem**, possivelmente devido ao aumento de custos.

### Perfil de Clientes

*Para analisar o perfil dos clientes, dividi estes em diversas segmentações (grupos) e realizei as análises cruzando as vendas onlines (cuja tabela possui uma ligação com a tabela dos clientes) com as segmentações de clientes:*

- A análise do perfil de clientes revela **diferenças claras no comportamento de compra entre os segmentos.**

- Clientes **Pessoa física** apresentam ticket médio maior que empresas, enquanto entre os consumidores individuais, **mulheres** possuem ticket médio ligeiramente superior ao dos homens.

- Em termos socioeconômicos, clientes de **renda média e média alta**, bem como **profissionais em cargos de gestão ou ocupações especializadas**, apresentam maior valor médio por compra, indicando maior poder de consumo.

- Já em relação à **receita total**, alguns segmentos se destacam pelo alto volume de compras, enquanto outros realizam menos transações, mas com maior valor por compra, gerando receita e lucro relevantes mesmo com menor frequência.

Esses resultados mostram que diferentes perfis de clientes contribuem para o desempenho do negócio de maneiras distintas, seja pelo volume de compras ou pelo maior valor gasto em cada transação.

## Conclusão

Este projeto demonstra como o **domínio de SQL e a aplicação de técnicas analíticas** permitem construir uma visão completa do desempenho empresarial — conectando dados operacionais a análises estratégicas.

O foco foi evidenciar **capacidade analítica, domínio técnico e visão de negócio**, transformando dados brutos em informações estruturadas para apoio à tomada de decisão baseada em fatos.






