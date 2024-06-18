-- 1.3 Reescreva o exercício 1.2 de modo que o total de pedidos seja armazenado em uma
-- variável de saída (OUT).

DROP PROCEDURE sp_total_pedidos(integer)
CREATE OR REPLACE PROCEDURE sp_total_pedidos (OUT total_pedidos INT, IN cod_cliente INT)
LANGUAGE plpgsql
AS $$
BEGIN
	SELECT COUNT(*) INTO total_pedidos
	FROM tb_pedido p
	WHERE p.cod_cliente = cod_cliente;

	RAISE NOTICE 'TOTAL DE PEDIDOS DO CLIENTE %: %', cod_cliente, total_pedidos ;
END;
$$

DO $$
DECLARE
	total_pedidos INT;
BEGIN
	CALL sp_total_pedidos(1, total_pedidos);
	RAISE NOTICE 'TOTAL DE PEDIDOS DO CLIENTE %: %.', cod_cliente, total_pedidos;
END;
$$