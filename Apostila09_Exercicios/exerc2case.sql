--- 1.2 Faça um programa que exibe se um número inteiro é múltiplo de 3 ou de 5;
DO $$
DECLARE
	n INT := valor_aleatorio_entre(1,1000);
	mensagem VARCHAR(100);
BEGIN
	CASE
		WHEN n % 5 = 0 AND n % 3 = 0 THEN
			mensagem := 'E esse número é multiplo de 3 e de 5!';
        WHEN n % 5 = 0 THEN
            mensagem := 'E esse número é multiplo de 5!';
	    WHEN n % 3 = 0 THEN
	        mensagem := 'E esse número é multiplo de 3!';
		ELSE
			mensagem := 'E esse número não é multiplo nem de 3, nem de 5!';
	END CASE;
	RAISE NOTICE 'Seu valor gerado: %. %', n, mensagem;
END;
$$