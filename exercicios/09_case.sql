SELECT IdTransacao,
       qtdePontos,

    CASE
        WHEN QtdePontos < 10 THEN 'baixo'
        WHEN QtdePontos <= 500 THEN 'medio'
        WHEN QtdePontos > 500 THEN 'alto'
    END AS 'Classe'

FROM transacoes