-- Uma outra possibilidade, em que agrupamos valores;
DO $$
DECLARE
	valor INT := valor_aleatorio_entre(1, 12);
	mensagem VARCHAR(200);
BEGIN
	RAISE NOTICE 'O valor gerado é: %', valor;
	CASE valor
		WHEN 1, 3, 5, 7, 9 THEN
			mensagem := 'Ímpar.';
		WHEN 2, 4, 6, 8, 10 THEN
			mensagem := 'Par.';
		ELSE
		mensagem := 'Fora do intervalo';
	END CASE;
	RAISE NOTICE '%', mensagem;
END;
$$