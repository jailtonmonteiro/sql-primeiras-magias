-- Quais clientes assinaram a lista de presença no dia 2025/08/25
-- Lista de presença: 11

SELECT  t1.idCliente,
        t2.DtCriacao

FROM clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.idCliente

LEFT JOIN transacao_produto t3
ON t2.IdTransacao = t3.IdTransacao

WHERE substr(t2.DtCriacao, 1, 10) = '2025-08-25'
AND t3.IdProduto = '11'

/* SELECT  t1.idCliente,
        t2.DtCriacao

FROM clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.idCliente

LEFT JOIN transacao_produto t3
ON t2.IdTransacao = t3.IdTransacao

LEFT JOIN produtos t4
ON t3.IdProduto = t4.IdProduto

WHERE substr(t2.DtCriacao, 1, 10) = '2025-08-25'
AND t4.DescNomeProduto = 'Lista de presença' */