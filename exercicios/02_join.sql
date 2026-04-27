-- Quais clientes assinaram a lista de presença no dia 2025/08/25
-- Lista de presença: 11

/* SELECT  t1.idCliente,
        t1.DtCriacao

FROM transacoes t1

LEFT JOIN transacao_produto t2
ON t1.IdTransacao = t2.IdTransacao

WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25'
AND t2.IdProduto = '11'

GROUP BY idCliente */

SELECT  t1.idCliente,
        t1.DtCriacao

FROM transacoes t1

LEFT JOIN transacao_produto t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos t3
ON t2.IdProduto = t3.IdProduto

WHERE substr(t1.DtCriacao, 1, 10) = '2025-08-25'
AND t3.DescNomeProduto = 'Lista de presença'