--- 1.2 Faça um programa que exibe se um número inteiro é múltiplo de 3 ou de 5;
DO $$
DECLARE
	n INT := valor_aleatorio_entre(1,1000);
	mensagem VARCHAR(100);
BEGIN
	IF n % 3 = 0 AND n % 5 = 0 THEN
		mensagem := 'E esse número é multiplo de 3 e de 5!';
	ELSIF n % 3 = 0 THEN
		mensagem := 'E esse número é multiplo de 3!';
	ELSIF n % 5 = 0 THEN
		mensagem := 'E esse número é multiplo de 5!';
	ELSE
		mensagem := 'E esse número não é multiplo nem de 3, nem de 5!';
	END IF;
	RAISE NOTICE 'Seu valor gerado: %. %', n, mensagem;
END;
$$