-- Quantidade de transações Acumuladas ao longo do tempo?

WITH tb_transacao_dia AS (
    SELECT  substr(DtCriacao, 1, 10) AS dtDia,
            count(DISTINCT IdTransacao) AS qtdeTransacao
    FROM transacoes

    GROUP BY dtDia
)

SELECT  *,
        sum(qtdeTransacao) OVER (ORDER BY dtDia)
FROM tb_transacao_dia
