# Pacote dplyr

#### Autoria do script: Jeanne Franco
#### Data: 09/08/22
#### Referência: https://github.com/rstudio/cheatsheets/blob/main/data-transformation.pdf

## Tópicos do script

1. Introdução;
2. Summarise Case:
- Função summarise;
- Função count.
3. Group Cases:
- Função group_by;
- Função rowwise;
- Função ungroup.
4. Manipulate Cases:
- Função filter;
- Função distinct;
- Função slice;
- Função slice_sample;
- Função slice_min e slice_max;
- Função slice_head e slice_tail.
5. Manipulate Variables:
- Função pull;
- Funão select;
- Função relocate.
6. Use esses auxiliares com select() e across();
7. Manipular múltiplas variáveis de uma vez:
- Função summarise;
- Função transmute.
8. Criar novas variáveis:
- Função mutate;
- Função transmute;
- Função rename.
9. Summary functions:
- Para usar com summarise():
* n();
* n_distinct();
* sum(!is.na());
* mean();
* median();
* first();
* last();
* nth();
* Funções rank;
* Funções spread.
10. Row Names:
- Função rownames_to_column;
- Função column_to_rownames;
- Função has_rownames;
- Função remove_rownames.
11. Funções vetorizadas:
- Função case_when.
12. Combinação de tabelas:
- Combinação de variáveis;
- Dados relacionais:
* Função left_join;
* Função right_join;
* Função inner_join;
* Função full_join.
- Combinando casos:
* Função bind_rows.
- Operações de conjuntos:
* Função setdiff;
* Função intersect;
* Função union;
* Função union_all.
