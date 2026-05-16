--Qual o dia da semana mais ativo de cada usuário?

WITH tb_cliente_dia AS (
    SELECT  idCliente,
            strftime('%w', substr(DtCriacao, 1, 10)) AS diaSemana,
            count(DISTINCT idTransacao) AS qtdeTransacoes
    FROM transacoes

    GROUP BY idCliente, diaSemana
),

tb_rn AS (
    SELECT  idCliente,
            qtdeTransacoes,
            CASE
                WHEN diaSemana = '0' THEN 'Domingo'
                WHEN diaSemana = '1' THEN 'Segunda-Feira'
                WHEN diaSemana = '2' THEN 'Terça-Feira'
                WHEN diaSemana = '3' THEN 'Quarta-Feira'
                WHEN diaSemana = '4' THEN 'Quinta-Feira'
                WHEN diaSemana = '5' THEN 'Sexta-Feira'
                WHEN diaSemana = '6' THEN 'Sábado'
            END AS nomeDiaSemana,
            ROW_NUMBER() OVER (PARTITION BY idCliente ORDER BY qtdeTransacoes DESC) AS rn

    FROM tb_cliente_dia
)

SELECT *
FROM tb_rn
WHERE rn = 1