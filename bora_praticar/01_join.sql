--Qual categoria tem mais produtos vendidos?

SELECT  tp.IdProduto,
        sum(QtdeProduto),
        p.DescCategoriaProduto

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

GROUP BY p.DescCategoriaProduto

ORDER BY sum(QtdeProduto) DESC