--- 1.4 Um comerciante comprou um produto e quer vendê-lo com um lucro de
-- 45% se o valor da compra for menor que R$20. Caso contrário, ele deseja
-- lucro de 30%. Faça um programa que, dado o valor do produto, calcula
-- o valor de venda.


DO $$
DECLARE
	p NUMERIC := valor_aleatorio_entre(1,50);
	mensagem VARCHAR(100);
	l NUMERIC;
	v NUMERIC(10,2);
BEGIN
	IF p < 20 THEN
		l := 0.45;
		mensagem := 'Produto abaixo da faixa de R$20.';
	ELSE
		l := 0.3;
		mensagem := 'Produto acima da faixa de R$20.';
	END IF;
	v := p + (1 * l);
	RAISE NOTICE '% Valor: %.', mensagem, v;
END;
$$