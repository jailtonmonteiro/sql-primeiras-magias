-- Qual o valor médio de pontos positivos por dia?

/* SELECT  substr(DtCriacao, 1, 10),
        sum(QtdePontos),
        count(DISTINCT substr(DtCriacao, 1, 10)) AS QtdeDias,
        sum(QtdePontos) / count(DISTINCT substr(DtCriacao, 1, 10)) AS MediaPtsDia

FROM transacoes

WHERE QtdePontos > 0; */

SELECT  substr(DtCriacao, 1, 10) AS Data,
        round(avg(QtdePontos), 2) AS MediaDia

FROM  transacoes

WHERE QtdePontos > 0

GROUP BY Data

ORDER BY 1 DESC

