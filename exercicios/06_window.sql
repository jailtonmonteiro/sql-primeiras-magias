-- Quantidade de usuários cadastrados (absoluto e acumulado) ao longo do tempo?

WITH tb_cliente_dia AS (
    SELECT  substr(DtCriacao, 1, 10) AS dtDia,
            count(idCliente) AS qtdeClientes
    FROM clientes
    GROUP BY dtDia
),

tb_total_cliente AS (
    SELECT sum(qtdeClientes)
    FROM tb_cliente_dia
),

tb_acumulado AS (
    SELECT  *,
            sum(qtdeClientes) OVER (ORDER BY dtDia) AS acumCliente
    FROM tb_cliente_dia
)

SELECT *
FROM tb_acumulado