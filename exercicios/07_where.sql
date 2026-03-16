-- Lista de produtos que são “chapéu”;

SELECT DescNomeProduto,
       DescCategoriaProduto

FROM produtos

WHERE DescCategoriaProduto = 'chapeu'