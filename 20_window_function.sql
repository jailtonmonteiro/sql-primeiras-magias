WITH cliente_dia AS (
    SELECT  DISTINCT
            idCliente,
            substr(DtCriacao, 1, 10) AS dtDia
    FROM transacoes
    WHERE substr(DtCriacao, 1, 4) = '2025'
    ORDER BY idCliente, dtDia
),
tb_lag_dia AS (

    SELECT  *,
            lag(dtDia) OVER (PARTITION BY idCliente ORDER BY dtDia) AS lagDia
    FROM cliente_dia
),
tb_diff_dt AS (
    SELECT  *,
            julianday(dtDia) - julianday(lagDia) AS dtDiff
    FROM tb_lag_dia
),
avg_cliente AS (
    SELECT  idCliente,
            avg(dtDiff) AS avgDia
    FROM tb_diff_dt
    GROUP BY idCliente
)

SELECT avg(avgDia) AS avgGeral
FROM avg_cliente