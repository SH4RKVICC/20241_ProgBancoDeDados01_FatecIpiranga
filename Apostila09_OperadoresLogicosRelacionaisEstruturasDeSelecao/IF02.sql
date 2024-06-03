-- Dado um núm. inteiro, mostre a metade do valor caso esteja entre 1 e 10;
DO $$
DECLARE
	valor INT;
BEGIN
	SELECT valor_aleatorio_entre(1,100) INTO valor;
	RAISE NOTICE 'O valor gerado é: %', valor;
	IF valor BETWEEN 1 AND 20 THEN
		RAISE NOTICE 'A metade do valor de % é %', valor, valor/2.;
	END IF;
END;
$$