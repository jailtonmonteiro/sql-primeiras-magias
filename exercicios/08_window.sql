-- Saldo de pontos acumulado de cada usuário?
WITH tb_ponto_dia AS (
    SELECT  idCliente,
            substr(DtCriacao, 1, 10) AS dtDia,
            sum(qtdePontos) AS pontosDia
    FROM transacoes

    GROUP BY idCliente, dtDia
)

SELECT  *,
        sum(pontosDia) OVER (PARTITION BY idCliente ORDER BY dtDia) AS saldoPontos
FROM tb_ponto_dia