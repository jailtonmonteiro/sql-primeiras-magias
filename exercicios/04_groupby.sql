-- Quantos produtos são de rpg?

/* SELECT  DescCategoriaProduto,
        count(*)

FROM    produtos

GROUP BY DescCategoriaProduto */

SELECT  count(*)

FROM    produtos

WHERE DescCategoriaProduto = 'rpg'