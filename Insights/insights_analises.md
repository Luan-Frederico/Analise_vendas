# Análise Estratégica de Vendas - Contoso

Este documento apresenta os principais **insights** obtidos a partir da análise das vendas da empresa de varejo Contoso.  
A análise foi realizada utilizando **SQL**, resultando em **descobertas estratégicas** para compreender melhor o desempenho do negócio, o comportamento de vendas de produtos, a distribuição regional das vendas e as características dos diferentes perfis de clientes.

## 1. Desempenho geral 

### Receita (Faturamento), custo, lucro e margem

| Indicador       | Valor (US$) |
|:----------------|------------:|
| Faturamento     | 12,413,657,608.89 |
| Custo total     | 5,364,896,601.78 |
| Lucro           | 7,048,761,007.11 |
| Margem de lucro | 56.78% |

- **Margem = 56.78%** -> Indica que, a cada US$ 100 faturados, US$ 56.78 viram lucro.
- Rentabilidade **excelente**.

### Receita e Lucro ao longo do tempo 
#### Anual

| Ano | Faturamento (US$) | Custo (US$) | Lucro (US$) | Margem (%) |
|:----|------------------:|------------:|------------:|-----------:|
| 2007 | 4.561.940.955,02 | 1.966.906.968,81 | 2.595.033.986,21 | 56.88% |
| 2008 | 4.111.233.534,68 | 1.773.348.839,62 | 2.337.884.695,06 | 56.87% |
| 2009 | 3.740.483.119,18 | 1.624.640.793,35 | 2.115.842.325,83 | 56.57% |

- Todos os anos obtiveram uma **margem de lucro bastante próxima e positiva**, acima de 50%. Isso significa que, em média, a cada ano, mais da metade da receita total se converte em lucro. Em termos mais simples, a receita corresponde a mais que o dobro do custo, em média.

#### Mensal

| Mês | Faturamento (US$) | Custo (US$) | Lucro (US$) | Margem (%) |
|:----|------------------:|------------:|------------:|-----------:|
| Janeiro |
| Fevereiro |
| Março |
| Abril |
| Maio |
| Junho |
| Julho |
| Agosto |
| Setembro |
| Outubro |
| Novembro |
| Dezembro |
- Já em termos de meses, no ano de 2007, a receita tende a ficar próxia de 400 bi, entretanto apresenta diminuições nos meses de junho, julho, agosto e setembro, com lucro oscilando perto de 200 bi. Em 2008, a receita sofre com variações, diminuições e aumentos, especialmente após a metade do ano, mas tende a ficar próxima dos 340 bi e lucro perto dos 200 bi. Por fim, em 2009, a receita varia em torno de 300 bi, com lucro em torno de 180 bi.

### Comportamento da margem de lucro

- As margens de lucro estão bem próximas quando analisadas por ano, com 56%, com esta variando de 56 a 57% nos meses em 2007 e 2008, porém indo de 55 a 57% em 2009. Isso indica um **ótimo desempenho** anual.

### Sazonalidade na vendas

- As vendas (receitas e lucros) apresentam uma clara **diminuição** a partir do ano de 2007. Em ambos os anos, as vendas aumentam após os 3 primeiros meses, em média, com pequenas flutuações nos meses subsequentes.

## 2. Produtos e Rentabilidade

### Receitas por Categorias e subcategorias

- As subcategorias que mais contribuíram para a receita total da empresa são as **Filmadoras digitais (Camcorders)** com 1.335 trilhão de dólares, seguida dos **Projetores e Telas (Projectors and Screens)** com 1.107 tri. e as **Lavadoras e Secadores (Washers and Dryers)** com 1.066 trilhões.  
Por outro lado, os produtos mais vendidos são os da categoria **Eletrônicos (Home Appliances)** com 3.992 trilhões de dólares de receita, seguido pelos **Computadores (Computers)** com 3.209 trilhões.

### Margem e Produtos

- O produto que apresentou a maior margem de lucro foi **WWI Screen 125in M1611 White** com 66.85% de lucratividade, apesar de não ser o produto de maior receita. Além deste, há vários outros produtos que também possuem uma margem de lucro bastante elevada, na casa dos 66%, o que evidencia que a Contoso possui produtos altamente valiosos.

### Produtos com alto volume de vendas, mas baixa rentabilidade

- **Há muitos produtos que apresentam grandes quantidades vendidas, mas têm baixa rentabilidade.** Por exemplo, existe um produto que tem 107.090 unidades e 53.92% de lucro, e outro produto que tem 106.034 unidades, mas uma lucratividade de 66.76%. Isso mostra que um produto, mesmo com quase mil unidades a menos, pode ser mais rentável, pois o custo de produção pode ser menor.

### Marcas e Performance

- A **performance das marcas varia entre volume de vendas e eficiência.** A Contoso se destaca por vender muito e ainda manter uma margem elevada, mostrando liderança sólida. Já Fabrikam e A. Datum chamam atenção pela maior margem de lucro, indicando maior eficiência e possível posicionamento mais estratégico. As demais marcas apresentam desempenho mais intermediário, com menor escala, mas margens relativamente estáveis.

### Recomendação estratégica

## 3.Análise regional e por Lojas

### Faturamento e Lucro por Região

- O continente **Norte-Americano (North America)** é a região que registrou o **maior faturamento** com um total de 7.2 bilhões de dólares, além contar com o **maior lucro** (4.1 bi) e a **maior margem de lucro** com 56.91%.  
- **Estados Unidos (United States)** foi o país que apresentou o **maior faturamento** com um total de 7 bilhões de dólares, além de contar com o **maior lucro** (4 bi) e a segunda maior margem de lucro com 56.91%, ficando atrás de Canadá com 56.95%. Esse desempenho dos EUA justifica o motivo pelo qual o continente Norte-Americano obteve o melhor desempenho.

### Margem por Lojas

- Dentre as 306 lojas, a **Contoso Thimphu No.1 Store** é a loja que teve a **maior margem de lucro** com 57.45%, tornando esta a loja mais rentável. Em contrapartida, também é uma das lojas que menos gera receita e lucro, pois pode ser que seja uma empresa menor que as outras.

### Regiões com alto volume de vendas, mas margem reduzida

- Em termos de quantidade de produtos vedidos, **América do Norte** é o continente com o **maior volume de vendas**, com um total de 30 milhões de unidades, e é a região que gera **maior rentabilidade** com margem de lucro de 56.91%. Por outro lado, a Ásia contém um maior volume de produtos vendidos em relação ao continente Europeu, porém é menos rentável, com uma margem de lucro inferior à da Europa.  
- Referindo-se à **nacionalidade**, todos os países apresentam uma margem de lucro em torno de 56%, com o Canadá tendo a maior, porém há uma discrpância enorme em relação a quantidade de unidades vendidas, com o Estados Unidos registrando quatro vezes mais vendas que o segundo país com mais produtos vendidos, China, embora apresentando uma margem bastante próxima a do Canadá.

### Desempenho regional ao longo do tempo

- Em relação às **vendas por continentes ao longo dos anos**, observa-se que os EUA apresenta uma queda brusca de desempenho, reduzindo as receitas, lucro e margem de lucro. Já a Ásia apresenta uma tendência de crescimento na receita e lucro, porém com diminuição na margem de lucro, o que pode ser explicado pelo aumento no custo. A Europa tem uma situação semelhante ao do EUA, com diminuição na receita e lucro, com uma margem variando, ora aumenta ora dimunui.
- Complementando com uma análise mensal, EUA registrou aumento geral nas receitas e lucros, e instabilidade na margem ao longo dos anos. Ásia registrou aumento instável nas receitas e lucros, com uma menor instabilidade que EUA. Já a Europa apresentou bastante instabilidade na receita, com aumentos e diminuições bruscas, o lucro tende a diminuir aos poucos com leves oscilações, e a margem permanece com variações mais constantes.

### Recomendação estratégica

## 4.Perfil de Clientes 

### Segmentos de clientes por Ticket médio

Para analisar os perfis dos clientes, dividi estes em várias segmentações/grupo demográfico e selecionei as mais relevantes para o problema de negócio, que são: Tipo de cliente, Gênero, Renda, Idade e Ocupação.

- Os **clientes físicos (Person)** registraram um ticket médio consideravelmente maior em relação ao das empresas, de 242 contra 207 dólares.  
- Entre os clientes físicos, as **mulheres** geram um ticket médio ligeiramente maior que os homens, de 243 conra 241 dólares.  
- Já dentre as classes de renda, clientes da **classe média**, com renda anual entre 150.000 e 300.000 dólares, apresentam um ticket médio consideravelmente maior em relação oas indivíduos que recebem menos que 150.000 dólares anualmente.  
- Em termos de idade, **clientes com mais de 55 anos** registraram um ticket médio consideravelmente maior que os compradores com 55 anos ou menos, embora aqueles apresentam tickets médio próximos.  
- Por fim, **gestor/líder** é a ocupação que registrou o maior ticket médio com 307 dólares, seguido dos Profissionais especializados, com 297 dólares.

### Receita por grupos demográficos

- Clientes do sexo **Masculino** registraram a maior receita.  
- Clientes da **Classe Média Baixa**, que recebem entre 50.000 e 150.000 dólares anualmente, registraram a maior receita, ultrapassando a casa dos 300 milhões de dólares.  
- Clientes que têm **idade entre 56 e 65 anos** registraram a maior receita, sendo a única a passar dos 200 milhões de dólares.  
- Por fim, os **Profissionais especializados** são os clientes responsáveis por gerar a maior receita dentre os cargos, sendo o único a passar dos 200 milhões de dólares.

### Comportamento de compra entre perfis de clientes

- Observa-se **diferença no comportamento de compra entre os perfis de clientes.** De modo geral, características demográficas e socioeconômicas como renda, ocupação, gênero e faixa etária estão associadas a variações no número de compras, receita, lucro e ticket médio. Enquanto alguns segmentos apresentam alto volume de compras, outros realizam menos transações, porém com maior valor médio, resultando em receita e lucro elevados mesmo com menor frequência de compra. Esses padrões indicam que diferentes perfis de clientes contribuem de maneiras distintas para o desempenho do negócio, seja pelo volume de compras ou pelo maior valor gasto por transação.

### Recomendação estratégica

## Conclusão estratégica
