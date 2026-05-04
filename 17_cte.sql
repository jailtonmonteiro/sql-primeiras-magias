/* --CTE: COMMOM TABLE EXPRESSION

SELECT count(DISTINCT idCliente)

FROM transacoes AS t1

WHERE t1.idCliente IN (
    SELECT DISTINCT  IdCliente

    FROM transacoes

    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29' */

WITH tb_cliente_primeiro_dia AS (
    
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'

),

tb_cliente_ultimo_dia AS (

    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
)

SELECT * 
FROM tb_cliente_ultimo_dia