
# Pacote dplyr -----------------------------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ---------------------------------------------------------------------------------------------------------
# Data: 09/08/22 ---------------------------------------------------------------------------------------------------------------------------
# Referência: https://github.com/rstudio/cheatsheets/blob/main/data-transformation.pdf -----------------------------------------------------

# Introdução -------------------------------------------------------------------------------------------------------------------------------

### As funções do dplyr trabalha com pipes dados organizados (tidy data).

library(dplyr)

# Summarise Cases --------------------------------------------------------------------------------------------------------------------------

### Aplica funções de resumos a colunas para criar novas tabelas de
### estatísticas resumos. Funções de resumo toma vetores como input
### e retorna um valor, por exemplo, cálculos de médias, desvios-
### padrão e erros-padrão.

## Função summarise:

### Computa tabelas de resumos.

summarise(mtcars, media = mean(mpg))

## Função count:

### Conta número de linhas de cada grupo definido pelas variáveis...
### Também tally().

count(mtcars, cyl)

# Group Cases ------------------------------------------------------------------------------------------------------------------------------

## Função group_by:

### Use 'group_by' para criar uma agrupada cópia de uma tabela agrupada
### por colunas. As funções do dplyr irão manipular cada grupo separadamente
### e combinar os resultados.

mtcars %>%
  group_by(cyl) %>%
  summarise(media = mean(mpg))

## Função rowwise:

### Agrupa dados em individuais linhas. Funções do dplyr irão computar
### os resultados para cada linha. Também aplicar funções para list-columns.

starwars %>%
  rowwise() %>%
  mutate(film_count = length(films)) %>%
  View()

## Função ungroup:

### Retorna uma cópia de tabela ungrouped.

ungroup(mtcars) %>%
  View()

# Manipulate Cases -------------------------------------------------------------------------------------------------------------------------

## Extração de casos em linhas. 

### As funções de linhas retornam um subconjuntos
### de linhas como uma nova tabela.

## Função filter:

### Extrai linhas que atingem o critério lógico.

filter(mtcars, mpg > 20)

## Função distinct:

### Remove linhas com valores duplicados.

distinct(mtcars, gear)

## Função slice:

### Seleciona linhas por posição.

slice(mtcars, 10:15)

## Função slice_sample:

### Seleciona linhas randomicamente. Usa 'n' para selecionar um número de
### linhas.

slice_sample(mtcars, n = 5, replace = TRUE)

## Função slice_min e slice_max:

### Seleciona linhas com os mais baixos e mais altos valores.

slice_min(mtcars, mpg, prop = 0.25)

## Função slice_head e slice_tail:

### Seleciona as primeiras ou últimas linhas.

slice_head(mtcars, n = 5)

# Operadores lógicos e booleanos para usar com a função filter -----------------------------------------------------------------------------

## ==
## !=
## <
## >
## <=
## >=
## is.na()
## !is.na()
## %in%
## !
## |
## &
## xor()

## Arrange cases

## Função arrange:

### Ordena linhas por valores de uma coluna ou colunas (do menor para o
### maior). Use desc() para ordenar do maior para o menor valor.

arrange(mtcars, mpg)
arrange(mtcars, desc(mpg))
