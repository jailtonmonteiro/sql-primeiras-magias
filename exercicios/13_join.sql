-- 13. Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?

WITH aluno_dia01 AS (
    SELECT  DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),
tb_dia_cliente AS (
    SELECT  t1.idCliente,
            substr(t2.DtCriacao, 1, 10) AS dtDia,
            count(*) AS engajamentos

    FROM aluno_dia01 t1

    LEFT JOIN transacoes t2
    ON t1.idCliente = t2.idCliente
    AND t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'

    GROUP BY t1.idCliente, substr(t2.DtCriacao, 1, 10)
)

SELECT  *
FROM tb_dia_cliente