/* SELECT  DtCriacao,
        substr(DtCriacao, 1, 10) AS dtDia,
        count(DISTINCT idCliente) AS qtdeCliente

FROM transacoes

WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-30'

GROUP BY dtDia */

WITH tb_prim_dia AS (
    SELECT  DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)

SELECT  substr(t2.DtCriacao, 1, 10) AS dtDia,
        count(DISTINCT t1.idCliente) AS qtdeCliente,
        1.* count(DISTINCT t1.idCliente) / (SELECT count(*) FROM tb_prim_dia) AS pctRetencao,
        1 - 1.* count(DISTINCT t1.idCliente) / (SELECT count(*) FROM tb_prim_dia) AS pctChurn
FROM tb_prim_dia t1

LEFT JOIN transacoes t2
ON t1.idCliente =  t2.idCliente

WHERE t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'

GROUP BY dtDia