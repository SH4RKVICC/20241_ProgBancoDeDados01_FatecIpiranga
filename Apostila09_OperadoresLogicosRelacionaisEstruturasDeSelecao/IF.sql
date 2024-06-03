-- Dado um núm. inteiro, exiba metade de seu valor caso seja maior que 20;
DO $$
DECLARE
	valor INT;
BEGIN
	valor := valor_aleatorio_entre(1,100);
	RAISE NOTICE 'O valor gerado é: %', valor;
	IF valor <= 20 THEN
		RAISE NOTICE 'A metade do valor de % é %', valor, valor/2::FLOAT;
	END IF;
END;
$$