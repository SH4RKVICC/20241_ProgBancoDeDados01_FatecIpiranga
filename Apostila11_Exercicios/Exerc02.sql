-- 1.2 Adicione um procedimento ao sistema do restaurante. Ele deve receber um parâmetro de
-- entrada (IN) que representa o código de um cliente exibir, com RAISE NOTICE, o total de
-- pedidos que o cliente tem.

CREATE OR REPLACE PROCEDURE sp_total_pedidos (IN cod_cliente INT)
LANGUAGE plpgsql
AS $$
DECLARE
	total_pedidos INT;
BEGIN
	SELECT COUNT(*) INTO total_pedidos
	FROM tb_pedido p
	WHERE p.cod_cliente = cod_cliente;
	RAISE NOTICE 'TOTAL DE PEDIDOS DO CLIENTE %: %', cod_cliente, total_pedidos ;
END;
$$

CALL sp_total_pedidos(1);