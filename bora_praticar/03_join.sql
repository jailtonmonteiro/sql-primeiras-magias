-- Qual mês tivemos mais lista de presença assinada?

/* SELECT  count(DISTINCT t1.IdTransacao),
        substr(t1.DtCriacao, 1, 7)

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

WHERE t2.IdProduto = 11

GROUP BY substr(t1.DtCriacao, 1, 7)

ORDER BY count(DISTINCT t1.IdTransacao) DESC */

SELECT  substr(t1.DtCriacao, 1, 7),
        count(DISTINCT t1.IdTransacao) AS QtdeAssinaturas

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescNomeProduto = 'Lista de presença'

GROUP BY substr(t1.DtCriacao, 1, 7)

ORDER BY QtdeAssinaturas DESC