-- 13. Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?

WITH tb_prim_dia AS (
    SELECT  DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_engaj AS (
    SELECT  idCliente,
            substr(DtCriacao, 1, 10) AS date,
            count(IdTransacao) AS qtdeTransacao
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY idCliente, substr(DtCriacao, 1, 10)
)

SELECT t1.idCliente,
        substr(t2.date, 1, 10),
        t2.qtdeTransacao

FROM tb_prim_dia t1

LEFT JOIN tb_engaj t2
ON t1.idCliente = t2.idCliente

ORDER BY t2.qtdeTransacao DESC