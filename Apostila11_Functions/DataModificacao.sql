-- Adicionando a coluna "data_modificacao" à tabela "tb_item_pedido"
ALTER TABLE tb_item_pedido
ADD COLUMN IF NOT EXISTS data_modificacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
--
DROP PROCEDURE sp_adicionar_item_a_pedido(integer,integer)
-- Adicionando Item ao Pedido;
CREATE OR REPLACE PROCEDURE sp_adicionar_item_a_pedido (
	IN cod_item INT
,	IN cod_pedido INT
) LANGUAGE plpgsql AS $$
BEGIN
    -- Insere novo cod_item
    INSERT INTO tb_item_pedido (cod_item, cod_pedido, data_modificacao) 
    VALUES (cod_item, cod_pedido, CURRENT_TIMESTAMP);
END;
$$