/* SELECT  IdProduto,
        count(*)

FROM transacao_produto

GROUP BY IdProduto */

SELECT  idCliente,
        sum(QtdePontos) AS saldoCliente,
        count(IdTransacao) AS QtdeTransacao

FROM transacoes

WHERE DtCriacao > '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY idCliente
HAVING saldoCliente >= 4000

ORDER BY saldoCLiente DESC

LIMIT 10