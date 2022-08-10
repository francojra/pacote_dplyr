
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
