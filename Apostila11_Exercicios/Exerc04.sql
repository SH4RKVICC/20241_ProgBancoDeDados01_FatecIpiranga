-- 1.4 Adicione um procedimento ao sistema do restaurante.
-- Ele deve receber um parâmetro de entrada e saída (INOUT) na entrada, o parâmetro possui
-- o código de um cliente.
-- Na saída, o parâmetro deve possuir o número total de pedidos realizados pelo cliente

CREATE OR REPLACE PROCEDURE sp_acha_qtde_pedidos (INOUT cod_cliente INT)
LANGUAGE plpgsql
AS $$
BEGIN
	SELECT COUNT(*) INTO cod_cliente
    FROM tb_pedido p
    WHERE p.cod_cliente = cod_cliente;
	RAISE NOTICE 'SEU TOTAL DE PEDIDOS: %', cod_cliente;
END;
$$

DO $$
DECLARE
    cod_cliente INT := 1;
BEGIN
    CALL sp_acha_qtde_pedidos(cod_cliente);
    RAISE NOTICE 'Total de pedidos do cliente 1: %', cod_cliente;
END;
$$
