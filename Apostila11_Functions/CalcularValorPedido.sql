-- Calcular valor total de um pedido;
DROP PROCEDURE sp_calcular_valor_de_um_pedido;

CREATE OR REPLACE PROCEDURE sp_calcular_valor_de_um_pedido (
	IN p_cod_pedido INT
,	OUT valor_total INT
) LANGUAGE plpgsql
AS $$
BEGIN
	SELECT SUM(valor) FROM
	tb_pedido p
	INNER JOIN tb_item_pedido ip ON
	p.cod_pedido = ip.cod_pedido
	INNER JOIN tb_item i ON
	ip.cod_item = i.cod_item
	WHERE p.cod_pedido = $1;
END;
$$

DO $$
DECLARE
valor_total INT;
BEGIN
CALL sp_calcular_valor_de_um_pedido(1, valor_total);
RAISE NOTICE 'Total do pedido %: R$%', 1, valor_total;
END;
$$
