-- 12. Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?

WITH tb_janeiro AS (
    SELECT  DISTINCT IdCliente,
            substr(DtCriacao, 1, 10) as date

    FROM transacoes

    WHERE DtCriacao >= '2025-01-01'
    AND DtCriacao < '2025-02-01'

),

tb_curso AS (
    SELECT  DISTINCT IdCliente,
            substr(DtCriacao, 1, 10) AS date

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
)

SELECT  count(DISTINCT t1.IdCliente)

FROM tb_janeiro t1

INNER JOIN tb_curso t2
ON t1.idCliente = t2.idCliente