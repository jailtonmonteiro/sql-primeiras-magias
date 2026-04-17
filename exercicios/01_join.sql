-- Quais clientes mais perderam pontos por Lover?
-- Lovers 1, 13


/* SELECT  t1.idCliente,
        sum(t2.qtdePontos) AS preju

FROM clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.idCliente

LEFT JOIN transacao_produto t3
ON t2.IdTransacao = t3.IdTransacao

WHERE t3.IdProduto IN (1, 13)

GROUP BY t1.idCliente

ORDER BY preju */

SELECT  t1.idCliente,
        sum(t2.qtdePontos) AS preju

FROM clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.idCliente

LEFT JOIN transacao_produto t3
ON t2.IdTransacao = t3.IdTransacao

LEFT JOIN produtos t4
ON t3.IdProduto = t4.IdProduto

WHERE t4.DescCategoriaProduto = 'lovers'

GROUP BY t1.idCliente

ORDER BY preju