-- Lista de transações com apenas 1 ponto;

SELECT IdTransacao,
       IdCliente,
       QtdePontos

FROM transacoes

WHERE QtdePontos = 1