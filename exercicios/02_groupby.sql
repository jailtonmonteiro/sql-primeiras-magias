-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT  idCliente,
        sum(qtdePontos) AS QtdePontos

FROM transacoes

WHERE QtdePontos > 0
AND DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'

GROUP BY idCliente

ORDER BY QtdePontos DESC

LIMIT 1