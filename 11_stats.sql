SELECT  round(avg(QtdePontos),2) AS MediaCarteira,
        1. * sum(QtdePontos) / count(IdCliente) AS MediaCompleta,
        min(QtdePontos) AS MinPontos,
        max(QtdePontos) AS MaxPontos,
        sum(flTwitch) AS QtdTwich,
        sum(flEmail) AS QtdEmail

FROM clientes