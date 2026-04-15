SELECT  tp.*,
        p.DescNomeProduto

FROM transacao_produto AS tp

INNER JOIN produtos AS P
ON tp.IdProduto = p.IdProduto