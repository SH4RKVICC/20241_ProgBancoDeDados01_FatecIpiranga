DO $$
DECLARE
	valor INT;
	mensagem VARCHAR(200);
BEGIN
	--vamos admitir alguns valores fora do intervalo para ver o que acontece quando
	--não há case previsto
	valor := valor_aleatorio_entre (1, 12);
	RAISE NOTICE 'O valor gerado é: %', valor;
	CASE valor
	WHEN 1 THEN
	mensagem := 'Ímpar.';
	WHEN 3 THEN
	mensagem := 'Ímpar.';
	WHEN 5 THEN
	mensagem := 'Ímpar.';
	WHEN 7 THEN
	mensagem := 'Ímpar.';
	WHEN 9 THEN
	mensagem := 'Ímpar.';
	WHEN 2 THEN
	mensagem := 'Par.';
	WHEN 4 THEN
	mensagem := 'Par.';
	WHEN 6 THEN
	mensagem := 'Par';
	WHEN 8 THEN
	mensagem := 'Par.';
	WHEN 10 THEN
	mensagem := 'Par.';
	--comente o ELSE e veja o resultado quando não houver case para o valor:
	--Exceção CASE_NOT_FOUND
	ELSE
		mensagem := 'Valor fora do intervalo.';
	END CASE;
	RAISE NOTICE '%', mensagem;
END;
$$