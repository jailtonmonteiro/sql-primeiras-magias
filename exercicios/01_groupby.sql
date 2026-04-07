-- Quantos clientes tem email cadastrado?

/* SELECT  sum(idCliente)

FROM clientes

WHERE flEmail = 1 */

SELECT sum(flEmail)

FROM clientes