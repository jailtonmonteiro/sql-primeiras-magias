SELECT  IdCliente,
        QtdePontos,
        qtdePontos + 10 AS qtdePontosPlus10,
        qtdePontos * 2 AS dobroDePontos,

        DtCriacao,
        
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana

FROM clientes