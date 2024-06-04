--- 1.1 Faça um programa que exibe se um número inteiro é múltiplo de 3;

DO $$
DECLARE
	n INT;
BEGIN
	n := valor_aleatorio_entre(1,1000);
	RAISE NOTICE 'Seu número sorteado é %', n;
	IF n % 3 = 0 THEN
		RAISE NOTICE 'E ele é multiplo de 3!';
	ELSE
		RAISE NOTICE 'E ele não é multiplo de 3!';
	END IF;
END;
$$