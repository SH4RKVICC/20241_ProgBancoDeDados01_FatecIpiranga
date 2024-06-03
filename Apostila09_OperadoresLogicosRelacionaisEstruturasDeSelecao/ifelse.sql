-- Dado um núm. inteiro, exiba se ele é par ou ímpar;
DO $$
DECLARE
	valor INT := valor_aleatorio_entre(1,100);
BEGIN
	RAISE NOTICE 'O valor gerado é %.', valor;
	IF valor % 2 = 0 THEN
		RAISE NOTICE '% é par!', valor;
	ELSE
		RAISE NOTICE '% é ímpar!', valor;
	END IF;
END;
$$