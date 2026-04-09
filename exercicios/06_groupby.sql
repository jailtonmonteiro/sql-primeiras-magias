-- Qual dia da semana quem mais pedidos em 2025?

SELECT  strftime('%w', substr(DtCriacao, 1, 10)) AS dias,
        count(*) AS QtdeTransacao,

        CASE
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '0' THEN 'Domingo'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '1' THEN 'Segunda-feira'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '2' THEN 'Terça-feira'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '3' THEN 'Quarta-feira'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '4' THEN 'Quinta-feira'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '5' THEN 'Sexta-Feira'
            WHEN strftime('%w', datetime(substr(DtCriacao, 1, 10))) = '6' THEN 'Sábado'
        END AS diaSemana

FROM transacoes

WHERE DtCriacao >= '2025-01-01'
AND DtCriacao < '2026-01-01'

-- WHERE substr(DtCriacao, 1, 4) = '2025'

GROUP BY diaSemana

ORDER BY count(*) DESC