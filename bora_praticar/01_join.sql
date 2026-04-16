--Qual categoria tem mais produtos vendidos?

SELECT  p.DescCategoriaProduto AS Categorias,
        count(DISTINCT tp.IdTransacao) AS QtdeTransacoes

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

GROUP BY p.DescCategoriaProduto

ORDER BY sum(QtdeProduto) DESC