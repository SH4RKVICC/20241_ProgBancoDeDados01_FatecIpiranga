DO $$
DECLARE
	v_troco INT;
	v_valor_total INT;
	v_valor_pago_pelo_cliente INT := 100;
BEGIN
	CALL sp-calcular_valor_de_um_pedido
	CALL sp_calcular_troco(
		v_troco
,		v_valor_pago_pelo_cliente
,		v_valor_total		
	);
	RAISE NOTICE 'A conta foi de R$% e você pegou R$%. Assim, seu troco é de R$%. Volte sempre!', v_valor_total, v_valor_pago_pelo_cliente, v-troco;
END;
$$