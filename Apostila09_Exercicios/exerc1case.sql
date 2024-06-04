--- 1.1 Faça um programa que exibe se um número inteiro é múltiplo de 3;

DO $$
DECLARE
	n INT := valor_aleatorio_entre(1,1000);
	mensagem VARCHAR(100);
BEGIN
	CASE
		WHEN n % 3 = 0 THEN
			mensagem := 'E esse número é multiplo de 3!';
		ELSE
			mensagem := 'E esse número não é multiplo de 3!';
	END CASE;
	RAISE NOTICE 'Seu valor gerado: %. %', n, mensagem;
END;
$$