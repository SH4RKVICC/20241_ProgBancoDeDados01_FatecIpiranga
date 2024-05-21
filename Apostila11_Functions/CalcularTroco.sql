-- Calcular Troco
CREATE OR REPLACE PROCEDURE sp_calcular_troco(
	OUT p_troco INT,
	IN p_valor_pago_pelo_cliente INT,
	IN p_valor_total INT
) LANGUAGE plpgsql AS $$
BEGIN
	p_troco := p_valor_pago_pelo_cliente - p_valor_total;
END;
$$