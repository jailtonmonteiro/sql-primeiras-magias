-- Qual o produto com mais pontos transacionados?

SELECT  IdProduto,
        sum(vlProduto) AS totalPontos,
        sum(QtdeProduto) AS QtdeVendas

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(vlProduto) DESC