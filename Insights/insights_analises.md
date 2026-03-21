# Análise Estratégica de Vendas - Contoso

Este documento apresenta os principais **insights** obtidos a partir da análise das vendas da empresa de varejo Contoso.  
A análise foi realizada utilizando **SQL**, resultando em **descobertas estratégicas** para compreender melhor o desempenho do negócio, o comportamento de vendas de produtos, a distribuição regional das vendas e as características dos diferentes perfis de clientes.

---

# 1. Desempenho geral 

## Receita (Faturamento), custo, lucro e margem

| Indicador       | Valor (US$)       |
|:----------------|------------------:|
| Faturamento     | 12,413,657,608.89 |
| Custo total     | 5,364,896,601.78  |
| Lucro           | 7,048,761,007.11  |
| Margem de lucro | 56.78%            |

- **Margem = 56.78%** -> Indica que, a cada US$ 100 faturados, US$ 56.78 viram lucro.
- Rentabilidade **excelente**.

## Receita e Lucro ao longo do tempo 
#### Anual

| Ano  | Faturamento (US$) | Custo (US$)      | Lucro (US$)      | Margem (%) |
|:-----|------------------:|-----------------:|-----------------:|-----------:|
| 2007 | 4.561.940.955,02  | 1.966.906.968,81 | 2.595.033.986,21 | 56.88      |
| 2008 | 4.111.233.534,68  | 1.773.348.839,62 | 2.337.884.695,06 | 56.87      |
| 2009 | 3.740.483.119,18  | 1.624.640.793,35 | 2.115.842.325,83 | 56.57      |

- Todos os anos apresentaram **margens de lucro bastante próximas e elevadas**, acima de 50%. Isso significa que, em média, a cada ano, **mais da metade da receita total se converte em lucro.** Em termos práticos, isso indica que a **receita anual é mais que o dobro dos custos**, evidenciando uma operação altamente rentável e lucrativa e eficiente no controle de custos.

#### Mensal

| Mês       | Faturamento 2007 | Lucro 2007     | Faturamento 2008 | Lucro 2008     | Faturamento 2009 | Lucro 2009     |
|:----------|-----------------:|---------------:|-----------------:|---------------:|-----------------:|---------------:|
| Janeiro   | 269.835.263,23   | 152.435.853,61 | 279.460.806,88   | 157.654.297,44 | 269.770.345,06   | 150.789.792,21 |
| Fevereiro | 298.215.968,35   | 168.348.082,39 | 288.852.634,02   | 163.600.895,88 | 266.002.676,16   | 149.804.385,69 |
| Março     | 300.486.926,90   | 168.881.450,73 | 290.060.560,62   | 164.250.374,14 | 270.769.957,91   | 153.190.277,27 |
| Abril     | 400.160.331,60   | 227.152.486,91 | 356.139.170,42   | 202.523.857,25 | 309.157.751,21   | 176.909.482,68 |
| Maio      | 423.429.127,79   | 241.117.883,31 | 351.096.953,11   | 200.855.540,28 | 341.560.286,15   | 196.375.164,31 |
| Junho     | 409.797.545,55   | 233.706.512,91 | 338.132.827,24   | 193.869.510,32 | 331.299.978,98   | 190.722.186,32 |
| Julho     | 389.617.372,27   | 221.739.911,76 | 386.024.197,67   | 220.250.241,69 | 333.374.435,16   | 187.934.296,46 |
| Agosto    | 388.429.827,11   | 222.449.277,97 | 359.938.153,68   | 204.727.275,34 | 325.030.342,96   | 183.985.007,60 |
| Setembro  | 379.144.599,56   | 217.171.684,71 | 353.421.976,71   | 201.660.738,84 | 313.780.340,43   | 177.702.897,25 |
| Outubro   | 423.213.240,84   | 244.414.205,91 | 326.256.367.86   | 187.509.060,51 | 326.836.387,93   | 189.019.428,25 |
| Novembro  | 453.750.209,24   | 257.467.904,55 | 383.063.713,52   | 215.866.234,36 | 322.166.203,77   | 177.344.106,51 |
| Dezembro  | 425.860.542,57   | 240.148.731,44 | 398.786.172,94   | 225.116.669,00 | 330.734.413,46   | 182.065.301,28 |

- **2007:** Foi o ano com melhor desempenho geral, mantendo faturamento e lucro altos na maior parte dos meses. No meio do ano há uma pequena queda, sugerindo um possível efeito de sazonalidade ou uma redução temporária na demanda, o que pode indicar oportunidades para estratégias de estímulo às vendas nesse intervalo.
- **2008:** Os resultados passam a oscilar mais ao longo do ano, com sinais de enfraquecimento após o primeiro semestre. Isso sugere um período de maior instabilidade no desempenho. Esse comportamento pode indicar um ambiente econômico menos favorável ou mudanças no mercado, reforçando a importância de monitoramento contínuo de custos e desempenho operacional ao longo do ano.
- **2009:** O faturamento e o lucro ficam em um nível mais baixo em relação aos anos anteriores, mas os resultados se mostram mais estáveis ao longo dos meses, indicando um possível período de ajuste após as oscilações anteriores.

## Comportamento da margem de lucro

| Indicador/Ano | Janeiro | Fevereiro | Março  | Abril  | Maio   | Junho  | Julho  | Agosto | Setembro | Outubro | Novembro | Dezembro |
|:--------------|--------:|----------:|-------:|-------:|-------:|-------:|-------:|-------:|---------:|--------:|---------:|---------:|
| Margem/2007   | 56.49%  | 56.45%    | 56.20% | 56.77% | 56.94% | 57.03% | 56.91% | 57.27% | 57.28%   | 57.75%  | 56.74%   | 56.39%   |
| Margem/2008   | 56.41%  | 56.64%    | 56.63% | 56.87% | 57.21% | 57.34% | 57.06% | 56.88% | 57.06%   | 57.47%  | 56.35%   | 56.45%   |
| Margem/2009   | 55.90%  | 56.32%    | 56.58% | 57.22% | 57.49% | 57.57% | 56.37% | 56.61% | 56.63%   | 57.83%  | 55.05%   | 55.05%   |

- **2007:** A margem de lucro se mantém bastante estável ao longo do ano, sempre próxima de 56–57%. Isso indica boa consistência na rentabilidade e sugere um controle eficiente dos custos mesmo com variações no faturamento.
- **2008:** A margem apresenta um crescimento gradual até meados do ano, atingindo seu ponto mais alto por volta de junho. A partir daí, passa a oscilar nos meses seguintes, mantendo-se ainda em um nível elevado, o que indica estabilidade na rentabilidade mesmo com variações no desempenho ao longo do segundo semestre.
- **2009:** Assim como em 2008, a margem cresce até aproximadamente junho. A partir de julho passa a oscilar, mas de forma um pouco mais moderada que no ano anterior durante boa parte do segundo semestre. Apesar de uma queda mais forte no final do ano, os níveis de margem ainda permanecem relativamente altos. sugerindo manutenção de uma boa eficiência operacional ao longo do ano.

## Sazonalidade nas vendas

- As vendas (receitas e lucros) apresentam uma clara **diminuição** a partir do ano de 2007. Em ambos os anos, as vendas aumentam após os 4 primeiros meses, em média, com pequenas flutuações nos meses subsequentes. Esse movimento pode indicar um efeito de **sazonalidade nas vendas**, possivelmente relacionado a mudanças naturais na demanda, períodos promocionais, datas comerciais importantes ou variações no ritmo de consumo ao longo do ano.

---

## 2. Produtos e Rentabilidade

### Receitas por Categorias e subcategorias
#### Subcategorias

| Subcategoria           | Faturamento (US$) | Lucro (US$)    |
|:-----------------------|------------------:|---------------:|
| Camcorders             | 1.335.302.769,92  | 798.856.051,54 |
| Projectors and Screens | 1.107.199.413,48  | 661.596.178,68 |
| Washers and Dryers     | 1.066.830.650,48  | 565.179.546,81 |
| Laptops                | 933.130.593,78    | 520.241.090,47 |
|           ...          |        ...        |      ...       |
| VCD e DVD              | 36.807.845,56     | 19.631.942,67  |
| Boxed Games            | 32.442.331,03     | 18.445.428,22  |

- As subcategorias com maior contribuição para a receita são **Filmadoras digitais** (Camcorders), **Projetores e Telas** (Projectors and Screens) e **Lavadoras e Secadores** (Washers and Dryers), ultrapassando a casa dos US$ 1 bilhão. A forte participação dessas subcategorias pode estar associada a fatores como maior volume de vendas ou preços médios mais elevados, hipótese que não pode ser confirmada diretamente com os dados disponíveis.
- Além disso, essas mesmas subcategorias também apresentam lucros expressivos, sugerindo que não apenas vendem mais, mas também geram mais lucro, sendo **estratégicas** para a empresa.
- Por outro lado, subcategorias como **VCD e DVD** e **Boxed Games** aparecem com receitas significativamente menores, o que pode indicar queda de relevância desses produtos, podendo estar associada a mudanças tecnológicas e de comportamento do consumidor (como o avanço do streaming e mídias digitais).

#### Categorias

| Categorias             | Faturamento (US$) | Lucro (US$)      |
|:-----------------------|------------------:|-----------------:|
| Home Appliances        | 3.922.736.787,19  | 2.179.484.604,96 |
| Computers              | 3.209.427.141,42  | 1.825.159.907,96 |
| Cameras and Camcorders | 2.562.023.774,06  | 1.536.955.209,75 |
|          ...           |        ...        |       ...        |
| Audio                  | 151.614.364,31    | 86.738.826,00    |
| Games and Toys         | 149.696.456,86    | 80.459.517,70    |

- As categorias com maior faturamento são **Eletrodomésticos** (Home Appliances) e **Computadores** (Computers), ultrapassando US$ 3 bilhões. Essas categorias concentram a maior parte da receita e também apresentam os maiores lucros, indicando seu papel central no desempenho da empresa.
- Em contraste, categorias como **Audio** e **Games and Toys** apresentam faturamento e lucro bem menores, sugerindo menor participação no resultado total.

### Margem e Produtos

| Nome do Produto                               | Faturamento (US$) | Margem de lucro (%) |
|:----------------------------------------------| -----------------:| -------------------:|
| WWI Screen 125in M1611 White                  | 1.458.518,40      | 66.85               |
| Adventure Works LCD22W M200 White             | 5.223.750,70      | 66.84               |
| WWI Screen 125in M1611 Silver                 | 1.541.491,83      | 66.84               |
| Contoso Bluetooth Active Headphones L15 Black | 7.628.441,05      | 66.84               |
|               ...                             |        ...        |         ...         |
| Litware Washer & Dryer 15.5in E150 Silver     | 10.604.035.35     | 47.51               |
| Fabrikam Laptop8.9 E0800 Silver               | 538.713,60        | 47.30               |

- O produto com maior margem de lucro é o **WWI Screen 125in M1611 White**, com 66,85%, mesmo sem gerar muita receita. Além dele, outros produtos também apresentam margens próximas de 66%, indicando a presença de itens com alta rentabilidade na empresa.
- Por outro lado, há produtos com margens menores (em torno de 47%), como **Litware Washer & Dryer 15.5in E150 Silver**, que ainda assim apresentam alto faturamento, inclusive superior ao de produtos mais rentáveis. Isso mostra um contraste importante entre receita e margem, sugerindo que nem sempre os produtos que mais faturam são os mais lucrativos em termos relativos.

### Produtos com alto volume de vendas, mas baixa rentabilidade

| Nome do Produto                                         | Quantidade vendida | Margem de lucro (%) | Faturamento (US$) |
|:--------------------------------------------------------| ------------------:| -------------------:| -----------------:|
| Contoso In-Line Coupler E180 Silver                     | 415.880            | 48.91               | 1.392.030,86      |
| Contoso In-Line Coupler E180 Black                      | 415.700            | 48.92               | 1.391.501,90      |
| Cigarette Lighter Adapter for Contoso Phones E110 Black | 409.600            | 48.98               | 10.227.464,38     |
| ...                                                     | ...                | ...                 | ...               |
| Litware Washer & Dryer 27in L420 Blue                   | 1.099              | 65.14               | 2.769.801,84      |
| Contoso Washer & Dryer 27in L270 Blue                   | 1.040              | 65.10               | 2.618.531,76      |
| Litware Washer & Dryer 27in L420 White                  | 1.011              | 65.18               | 2.551.356,60      |

- A análise revela que produtos com maior volume de vendas, como os In-Line Couplers, tendem a ter margens mais baixas e faturamento relativamente menor, enquanto itens como o Cigarette Lighter Adapter conseguem gerar receitas mais altas mesmo com margens parecidas, o que pode indicar diferença de preço ou posicionamento.
- Já produtos como lavadoras e secadoras (Washer & Dryers) aparecem com baixo volume de vendas, mas com margens mais altas, ainda assim mantendo um faturamento relevante.
- No geral, **há um contraste claro entre volume e margem:** produtos que vendem mais tendem a ser menos rentáveis proporcionalmente, enquanto os mais lucrativos vendem menos.

### Marcas e Performance

| Marca                | Quantidade vendida | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:---------------------|-------------------:|------------------:|-----------------:|--------------------:|
| Contoso              | 19.989.701         | 2.742.253.042,42  | 1.541.898.821,66 | 56.23               |
| Fabrikam             | 4.651.318          | 2.386.602.053,24  | 1.392.149.024,49 | 58.33               |
| Litware              | 3.966.203          | 1.432.744.691,86  | 802.172.628,46   | 55.99               |
| Adventure Works      | 3.489.890          | 1.352.240.190,16  | 754.357.256,28   | 55.79               |
| Proseware            | 4.113.914          | 1.205.475.416,64  | 700.565.638,82   | 58.12               |
| Wide World Importers | 2.830.607          | 960.994.252,44    | 541.538.228,24   | 56.35               |
| The Phone Company    | 2.427.158          | 673.525.407,96    | 379.340.915,54   | 56.32               |
| A. Datum             | 2.400.635          | 619.803.753,56    | 367.124.727,93   | 59.23               |
| Southridge Video     | 4.600.480          | 486.921.072,34    | 263.097.284,19   | 54.03               |
| Northwind Traders    | 604.756            | 418.668.898,71    | 234.655.922,77   | 56.05               |
| Tailspin Toys        | 4.245.792          | 134.428.829,55    | 71.860.558,72    | 53.46               |

- A **performance das marcas varia entre volume de vendas e eficiência**. A **Contoso** lidera em volume e faturamento, com uma margem próxima da média, o que reforça sua força em escala. Já **Fabrikam**, **A. Datum** e **Proseware** se destacam pelas margens mais altas, indicando maior eficiência e um posicionamento mais estratégico. Por outro lado, marcas como **Southridge Video** e **Tailspin Toys** até têm volumes relevantes, mas geram menos receita proporcionalmente, o que pode indicar menor valor agregado.
- No geral, fica claro um **contraste entre escala e rentabilidade**, com diferentes estratégias dentro do portfólio.

### Recomendação estratégica
#### Análise geral:

O portfólio apresenta concentração de receita em categorias como Home Appliances, Computers e subcategorias como Camcorders e Projectors and Screens, além de forte dependência de volume em marcas como Contoso. Ao mesmo tempo, marcas como A. Datum, Fabrikam e Proseware se destacam por maior margem, enquanto alguns produtos de alto volume operam com menor rentabilidade.

#### Recomendações:

- **Contoso** (alto volume, margem média): Testar ajustes de preço e redução de custos, já que pequenos ganhos de margem podem gerar grande impacto no lucro total.
- **A. Datum, Fabrikam e Proseware** (alta margem): Ampliar investimento em marketing e distribuição para ganhar escala, mantendo o posicionamento premium.
- **Home Appliances e Computers** (categorias principais): Continuar priorizando, mas com foco em eficiência operacional, já que concentram grande parte do faturamento.
- **Camcorders, Projectors and Screens** (Subcategorias líderes): Reforçar estratégia comercial, pois já são motores de receita e lucro.
- **Produtos de alto volume e baixa margem** (ex: In-Line Couplers): Avaliar reajuste de preço ou redução de custos para melhorar rentabilidade.
- **Produtos de alta margem e baixo volume** (ex: Washer & Dryer premium): Investir em marketing, posicionamento e possíveis bundles para aumentar vendas.
- **Audio, Games and Toys** (categorias de baixa relevância): Reavaliar — reduzir investimentos ou buscar reposicionamento para melhorar desempenho.

## 3. Análise regional e por Lojas

### Faturamento e Lucro por Região
#### Continente

| Continente    | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:--------------| -----------------:| ----------------:| -------------------:|
| North America | 7.287.305.516,43  | 4.147.471.884,05 | 56.91               |
| Asia          | 2.700.203.986,15  | 1.527.018.805,49 | 56.55               |
| Europe        | 2.426.148.106,30  | 1.374.270.317,56 | 56.64               |

- A **América do Norte** se destaca como a principal região produtora, concentrando o maior faturamento e lucro entre os continentes, além de apresentar uma margem consideravelmente superior às demais regiões. Isso indica não só **maior escala, mas também boa eficiência.**

#### País

| País          | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:--------------| -----------------:| ----------------:| -------------------:|
| United States | 7.036.656.457,48  | 4.004.724.134,89 | 56.91               |
| China         | 1.660.605.327,27  | 937.679.803,34   | 56.47               |
| Germany       | 1.017.318.431,42  | 576.088.165,80   | 56.63               |
| France        | 658.922.522,17    | 372.941.015,95   | 56.60               |
| ...           | ...               | ...              | ...                 |
| Slovenia      | 21.116.855,58     | 11.948.953,03    | 56.58               |
| Sweden        | 21.017.382,48     | 11.857.220,40    | 56.42               |
| Switzerland   | 20.797.430,75     | 11.758.377,15    | 56.54               |

- Os **Estados Unidos** se destacam como o principal mercado, concentrando o maior faturamento e o maior lucro, além de manter uma margem elevada e muito próxima da maior observada, que possui a maior margem entre todos os países, com 56.95%. Esse desempenho explica a liderança da América do Norte, mostrando como os resultados estão fortemente concentrados no país.
- Além disso, os três primeiros países — **Estados Unidos, China e Alemanha** — são justamente os que mais contribuem para o faturamento total e lucratividade, liderando não só nos seus respectivos continentes, mas também no cenário global, indicando uma forte concentração dos resultados em poucos mercados.

### Margem por Lojas

| Loja                               | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:-----------------------------------| -----------------:| ----------------:| -------------------:|
| Contoso Thimphu No.1 Store         | 6.986.780,59      | 4.013.800,72     | 57.45               |
| Contoso Guangzhou Store            | 6.460.684,53      | 3.708.318,83     | 57.40               |
| Contoso Fond du Lac Store          | 13.547.747,04     | 7.776.159,56     | 57.40               |
| Contoso Catalog Store              | 1.078.007.547,23  | 612.543.844,55   | 56.82               |
| ...                                | ...               | ...              | ...                 |
| Contoso North America Online Store | 984.249.404,25    | 557.520.994,55   | 56.64               |
| Contoso Asia Online Store          | 887.049.174,43    | 500.337.745,19   | 56.40               |
| Contoso Europe Online Store        | 806.300.456,39    | 456.445.932,20   | 56.61               |
| Contoso North America Reseller     | 628.168.708,52    | 357.081.174,70   | 56.84               |
| Contoso Asia Reseller              | 563.941.179,69    | 318.642.038,28   | 56.50               |
| Contoso Europe Reseller            | 523.087.943,23    | 295.915.751,12   | 56.57               |
| ...                                | ...               | ...              | ...                 |

- Entre as 306 lojas, a **Contoso Thimphu No.1 Store** apresenta a maior margem de lucro, passando de 57%, o que indica alta eficiência. Por outro lado, essa loja tem um faturamento e lucro bem menores em comparação com outras, sugerindo menor escala de operação.
- Em contraste, lojas como a **Contoso Catalog Store** e as **lojas online** para os três continetes concentram grande parte do faturamento e do lucro, mesmo com margens um pouco menores.
- No geral, há um padrão claro: **lojas menores tendem a ter margens ligeiramente mais altas**, enquanto **canais de venda maiores operam com maior volume e sustentam o resultado total**, mesmo com margens um pouco mais baixas.

### Regiões com alto volume de vendas, mas margem reduzida
#### Continente

| Continente    | Quantidade vendida | Margem de lucro (%) |
|:--------------| ------------------:| -------------------:|
| North America | 30.746.619.00      | 56.91               |
| Asia          | 12.301.563.00      | 56.55               |
| Europe        | 10.272.272.00      | 56.64               |

- Em termos de quantidade vendida, a **América do Norte** lidera com folga, somando cerca de 30 milhões de unidades. Além do alto volume, também se destaca pela maior margem de lucro, o que indica uma operação bem **equilibrada entre escala e rentabilidade.**
- A **Ásia**, por sua vez, apresenta um volume de vendas superior ao da Europa, mas com uma margem de lucro um pouco menor. Isso sugere que, apesar do bom desempenho em volume, pode haver espaço para **ajustes para melhorar a rentabilidade** - seja em preços, mix de produtos ou custos.
- Já a **Europa** vende menos que a Ásia, mas consegue manter uma margem levemente maior, o que pode indicar uma estratégia mais eficiente em termos de precificação ou foco em produtos com maior valor agregado.

#### País

| País          | Quantidade vendida | Margem de lucro (%) |
|:--------------| ------------------:| -------------------:|
| United States | 29.713.764.00      | 56.91               |
| China         | 7.640.703.00       | 56.47               |
| Germany       | 4.442.618.00       | 56.63               |
| France        | 2.762.303.00       | 56.60               |
| ...           | ...                | ...                 |
| Romania       | 83.941.00          | 56.74               |
| Ireland       | 83.548.00          | 56.61               |
| Netherlands   | 82.194.00          | 56.74               |

- Olhando por país, a **margem de lucro é bastante estável** entre todos eles, sempre girando em torno de 56%. O Canadá aparece com a maior margem, mas a diferença para os demais países é pequena, o que sugere uma consistência na estratégia de precificação e custos.
- Por outro lado, o que realmente muda de forma significativa é o **volume de vendas**. Os **Estados Unidos** se destacam muito, com uma quantidade vendida cerca de quatro vezes maior que a da China, que ocupa a segunda posição.
- Isso mostra que, embora as margens sejam parecidas entre os países, o impacto no resultado total vem principalmente do volume. Ou seja, países como os Estados Unidos acabam sendo muito mais relevantes para o faturamento geral, mesmo sem ter uma margem tão diferente dos demais.

### Desempenho regional ao longo do tempo
#### América do Norte

| Ano  | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:-----| -----------------:| ----------------:| -------------------:|
| 2007 | 2.875.499.132,11  | 1.639.950.765,84 | 57.03               |
| 2008 | 2.397.299.780,89  | 1.366.340.013,49 | 56.99               |
| 2009 | 2.014.506.603,43  | 1.141.181.104,72 | 56.65               |

#### Ásia

| Ano  | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:-----| -----------------:| ----------------:| -------------------:|
| 2007 | 726.887.376,46    | 412.200.128,43   | 56.71               |
| 2008 | 944.715.987,80    | 535.376.102,27   | 56.67               |
| 2009 | 1.028.600.621,89  | 579.442.574,79   | 56.33               |

#### Europa

| Ano  | Faturamento (US$) | Lucro (US$)      | Margem de lucro (%) |
|:-----| -----------------:| ----------------:| -------------------:|
| 2007 | 959.554.446,45    | 542.883.091,94   | 56.58               |
| 2008 | 769.217.766,00    | 436.168.579,31   | 56.70               |
| 2009 | 697.375.893,85    | 395.218.646,31   | 56.67               |

- Olhando a evolução ao longo dos anos, a **América do Norte** apresenta uma queda bem perceptível no faturamento e no lucro de 2007 para 2009. Mesmo assim, a margem de lucro quase não muda, o que sugere que o problema não está tanto nos custos, mas sim na diminuição do volume de vendas.
- A **Ásia** segue um caminho diferente, com crescimento contínuo em faturamento e lucro ao longo dos anos. Por outro lado, a margem de lucro cai um pouco, o que pode indicar aumento de custos ou até uma estratégia mais agressiva de preços para expandir a participação no mercado.
- Já a **Europa** tem um comportamento parecido com o da América do Norte, com queda nas receitas e nos lucros ao longo do tempo. A margem, porém, se mantém bem estável, reforçando a ideia de que a redução está mais ligada à queda nas vendas do que a mudanças na eficiência operacional.

- Complementando com uma análise mensal, **América do Norte** registrou aumento geral nas receitas e lucros, e instabilidade na margem ao longo dos anos. A **Ásia** registrou aumento instável nas receitas e lucros, com uma menor instabilidade que o anterior. Por fim, a **Europa** apresentou bastante instabilidade na receita, com aumentos e diminuições bruscas, o lucro tende a diminuir aos poucos com leves oscilações, e a margem permanece com variações mais constantes.

### Recomendação estratégica
#### Análise geral:

Os resultados indicam uma forte concentração de receita e lucro na América do Norte, principalmente nos Estados Unidos, que se destacam como principal mercado da operação. Em paralelo, observa-se que as margens de lucro são bastante estáveis entre regiões e países, sugerindo consistência na estrutura de custos e precificação.  
Além disso, há diferenças importantes no comportamento das regiões: a Ásia apresenta crescimento em volume, enquanto América do Norte e Europa mostram queda no faturamento ao longo do tempo, mesmo mantendo margens estáveis. Isso reforça que o desempenho está mais relacionado ao volume de vendas do que à eficiência operacional.

#### Recomendações:

- **Mercado dos Estados Unidos:** Priorizar ações de manutenção e otimização, já que o país concentra grande parte do resultado. Pequenas melhorias podem gerar impacto relevante no total.
- **China e Ásia** (crescimento com menor margem): Avaliar oportunidades de melhoria de rentabilidade, seja via ajuste de preços, redução de custos ou revisão do mix de produtos.
- **Europa** (queda com margem estável): Focar em estratégias para retomada de crescimento, como expansão comercial ou reforço em canais de venda.
- **Dependência de poucos mercados:** Buscar maior diversificação geográfica, reduzindo o risco de concentração em países como os Estados Unidos.
- **Países com menor volume e boa margem:** Explorar estratégias para ganho de escala, já que apresentam eficiência, mas baixo impacto no resultado total.
- **Canais de alto volume** (online e catálogo): Melhorar eficiência operacional, pois são responsáveis por grande parte do faturamento, mesmo com margens ligeiramente menores.

## 4.Perfil de Clientes 

### Segmentos de clientes por Ticket médio

Para analisar os perfis dos clientes, dividi estes em várias segmentações/grupos demográficos e selecionei as mais relevantes para o problema de negócio, que são: Gênero, Renda, Idade e Ocupação.

| Gênero    | Número de compras | Faturamento (US$) | Lucro (US$)    | Ticket médio (US$) |
|:----------| -----------------:| -----------------:| --------------:| ------------------:|
| Masculino | 1.437.544         | 346.854.253,78    | 156.018.878,66 | 241,28             |
| Feminino  | 1.394.649         | 338.899.428,28    | 152.204.215,82 | 243,00             |

| Categoria           | Número de compras | Faturamento (US$) | Lucro (US$)    | Ticket médio (US$) |
|:--------------------| -----------------:| -----------------:| --------------:| ------------------:|
| Classe Média        | 42.180            | 13.687.389,42     | 7.539.870,26   | 324,50             |
| Classe Média-Baixa  | 1.244.074         | 378.462.403,27    | 178.113.906,47 | 304,21             |
| Classe Baixa        | 1.545.939         | 293.603.889,37    | 122.569.317,75 | 189,92             |

| Faixa etária | Número de compras | Faturamento (US$) | Lucro (US$)    | Ticket médio (US$) |
|:-------------| -----------------:| -----------------:| --------------:| ------------------:|
| 56 - 65      | 908.354           | 228.576.406,36    | 103.497.463,64 | 251,64             |
| 66 - 75      | 695.590           | 173.932.808,42    | 79.253.063,91  | 250,05             |
| 76 +         | 514.212           | 128.543.230,31    | 58.699.297,12  | 249,98             |
| 46 - 55      | 714.037           | 154.701.236,96    | 66.773.269,80  | 216,66             |

| Ocupação      | Número de compras | Faturamento (US$) | Lucro (US$)    | Ticket médio (US$) |
|:--------------| -----------------:| -----------------:| --------------:| ------------------:|
| Management    | 455.786           | 140.048.068,89    | 69.484.957.73  | 307,27             |
| Professional  | 708.764           | 211.198.020,57    | 97.619.015,95  | 297,98             |
| Skiled Manual | 658.214           | 169.887.225,60    | 74.556.070,66  | 258,10             |
| Clerical      | 567.387           | 101.992.464,24    | 41.894.697,04  | 179,76             |
| Manual        | 442.042           | 62.627.902,76     | 24.668.353,10  | 141,68             |

Os dados mostram que o **ticket médio está fortemente associado ao perfil socioeconômico dos clientes.**

- Clientes com **idade acima dos 55 anos** apresentam tickets médios mais elevados, próximos de US$ 250, indicando uma maior disposição a gastar por compra em comparação aos consumidores mais jovens.
- Esse padrão se reforça quando analisamos a renda e ocupação. Clientes da **classe média** (que recebem entre US$ 150 mil e 300 mil anuais) registram o maior ticket médio, sugerindo que maior poder aquisitivo se traduz diretamente em compras de maior valor.
- Da mesma forma, profissionais em cargos de maior qualificação, como **gestores** e **especialistas**, também se destacam, com tickets médios acima de US$ 290.
- Por outro lado, o **gênero** apresenta pouca influência: mulheres possuem ticket médio levemente superior ao dos homens, mas a diferença é pouco significativa.

Em síntese, o **ticket médio é principalmente impulsionado por renda, idade e ocupação**, sendo mais alto entre clientes mais maduros e com maior poder aquisitivo.

### Receita por grupos demográficos

A **receita apresenta uma concentração clara em alguns grupos específicos.**

- Entre os **gêneros**, clientes do sexo masculino registram o maior faturamento total, embora a diferença em relação ao público feminino não seja muito expressiva.
- Ao analisar a renda, a concentração é bem mais evidente: clientes da **classe média-baixa** (que recebem entre US$ 50 mil e 150 mil anuais) são responsáveis pela maior parcela do faturamento, sendo o único a ultrapassar os US$ 370 milhões. Esse valor é significativamente superior aos demais grupos, destacando esse segmento como o principal responsável pela receita.
- Em termos de idade, clientes entre **56 e 65 anos** lideram o faturamento, sendo o único grupo a ultrapassar a marca de US$ 200 milhões, o que evidencia sua relevância dentro da base.
- Por fim, em relação à ocupação, os **profissionais especializados** concentram a maior receita total, também superando os US$ 200 milhões e se destacando frente aos demais cargos.

Esses grupos representam os principais responsáveis pelo faturamento total observado.

### Comportamento de compra entre perfis de clientes

- Observa-se **diferença no comportamento de compra entre os perfis de clientes.** De modo geral, características demográficas e socioeconômicas como renda, ocupação, gênero e faixa etária estão associadas a variações no número de compras, receita, lucro e ticket médio. Enquanto alguns segmentos apresentam alto volume de compras, outros realizam menos transações, porém com maior valor médio, resultando em receita e lucro elevados mesmo com menor frequência de compra. Esses padrões indicam que **diferentes perfis de clientes contribuem de maneiras distintas para o desempenho do negócio, seja pelo volume de compras ou pelo maior valor gasto por transação.**

### Recomendação estratégica
#### Análise geral:

Os resultados mostram que o desempenho do negócio varia entre os perfis de clientes. De forma geral, segmentos com **maior renda, maior qualificação profissional e idade mais elevada concentram os maiores tickets médios**, enquanto grupos mais amplos da base são responsáveis pela maior parte da receita, lucro e volume de compras.
Isso indica que diferentes perfis contribuem de maneiras distintas: alguns pelo alto valor por transação, outros pelo impacto no volume e faturamento total.

#### Recomendações:

- **Segmentos de maior ticket médio:** Explorar estratégias de upsell e produtos de maior valor agregado, maximizando receita por cliente.
- **Grupos com maior faturamento:** Priorizar retenção e fidelização, já que representam a base principal de receita do negócio.
- **Clientes 55+:** Desenvolver ações direcionadas, pois combinam alto ticket médio com relevância em receita.
- **Segmentos de menor ticket médio:** Implementar estratégias para aumentar o valor por compra, como combos, recomendações personalizadas ou incentivos.
- **Uso de segmentação:** Direcionar campanhas e ofertas com base nos perfis identificados, equilibrando ações entre ganho de escala (em volume) e aumento de valor (em ticket médio).

# Conclusão estratégica

De forma geral, a análise indica um negócio **altamente rentável e eficiente**, com margens elevadas ao longo do período, apesar de uma leve queda no faturamento. A receita está concentrada em produtos estratégicos, mercados específicos e segmentos de clientes com maior poder de compra, que também apresentam tickets médios mais altos.

Por outro lado, há **oportunidades de melhoria** relacionadas à diversificação de mercados e ao melhor aproveitamento de categorias com alto volume, mas menor rentabilidade. Em síntese, os resultados mostram uma operação sólida, com espaço para otimizar ainda mais o desempenho a partir de decisões mais direcionadas.
