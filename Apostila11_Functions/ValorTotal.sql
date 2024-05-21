-- Fechando Pedido;
DO $$
DECLARE
	v_valor_total INT;
BEGIN
	CALL sp_calcular_valor_de_um_pedido;
	RAISE NOTICE 'Total do pedido: %', v_valor_total;
END;
$$

DO $$
DECLARE
	valor_total INT;
BEGIN
	CALL sp_calcular_valor_de_um_pedido(
		p_codigo_pedido,
		v_valor_total
	);
	IF p_valor_pago_pelo_Cliente < v_valor_total THEN
		RAISE NOTICE 'R$% insuficiente para pagar a conta de R$%',
		p_valor_pago_pelo_cliente, v_valor_total;
	ELSE
	RAISE NOTICE 'Total do pedido %: R$%', 1, valor_total;
END;
$$