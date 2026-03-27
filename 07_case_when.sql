/* De 0 a 500 → recebe o nível Ponei
De 501 a 1000 → recebe o nível Ponei Premium
De 1001 a 5000 → recebe o nível Mago Aprendiz
De 50001 a 10000 → recebe o nível Mago Mestre
Acima de 10001 → recebe o nível Mago Supremo */

SELECT  idCliente,
        qtdePontos,
        CASE 
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
            WHEN QtdePontos > 10000 THEN 'Mago Supremo'
        END AS Classe,

        CASE
            WHEN QtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei,

        CASE
            WHEN QtdePontos > 1000 THEN 1
            ELSE 0
        END AS flMago

FROM clientes

WHERE flPonei = 1

ORDER BY qtdePontos DESC