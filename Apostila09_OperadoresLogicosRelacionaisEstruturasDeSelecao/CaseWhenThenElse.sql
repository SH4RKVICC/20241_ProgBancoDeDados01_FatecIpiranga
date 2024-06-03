-- Dado um valor entre 1 e 10, decidir se ele é par ou ímpar.
-- Use CASE WHEN THEN ELSE;

DO $$
DECLARE
	valor INT := valor_aleatorio_entre (1, 12);
BEGIN
	RAISE NOTICE 'O valor gerado é: %', valor;
	CASE
		WHEN valor BETWEEN 1 AND 10 THEN
		CASE
			WHEN valor % 2 = 0 THEN
				RAISE NOTICE 'Par';
			ELSE
				RAISE NOTICE 'Ímpar';
			END CASE;
		ELSE
			RAISE NOTICE 'Fora do intervalo';
	END CASE;
END;
$$