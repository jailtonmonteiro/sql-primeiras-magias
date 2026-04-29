-- Clientes mais antigos, tem mais frequência de transação?

SELECT t1.idCliente,
    julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS idadeBase,
    count(t2.IdTransacao) AS qtdeTransacoes

FROM clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.idCliente

GROUP BY t2.idCliente, idadeBase

ORDER BY idadeBase DESC