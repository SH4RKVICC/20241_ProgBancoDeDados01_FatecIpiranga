-- Adicionando Item ao Pedido;
CREATE OR REPLACE PROCEDURE sp_adicionar_item_a_pedido (IN cod_item INT, IN cod_pedido INT)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insere novo cod_item
    INSERT INTO tb_pedido p SET data_modificacao = CURRENT_TIMESTAMP WHERE p.cod_pedido = $2; 
END;
$$

CALL sp_adicionar_item_a_pedido (1,1);
SELECT * FROM tb_item_pedido;
SELECT * FROM tb_pedido;