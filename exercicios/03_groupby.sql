-- Qual cliente fez mais transações no ano de 2024?

SELECT  idCliente,
        count(*),
        count (DISTINCT IdTransacao) AS contagem

FROM transacoes

WHERE DtCriacao >= '2024-01-01'
AND DtCriacao < '2025-01-01'

GROUP BY IdCliente

ORDER BY count(*) DESC