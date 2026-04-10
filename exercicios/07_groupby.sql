-- Qual o produto mais transacionado?

SELECT  IdProduto,
        sum(QtdeProduto),
        count(idTransacaoProduto)

FROM transacao_produto

GROUP BY IdProduto

ORDER BY count(idTransacaoProduto) DESC

LIMIT 1;


/* SELECT  IdProduto,
        DescNomeProduto

FROM produtos

WHERE IdProduto = 005 */