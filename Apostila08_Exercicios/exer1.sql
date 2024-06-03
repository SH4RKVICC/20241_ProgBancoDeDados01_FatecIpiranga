-- 1.1 Faça um programa que gere um valor inteiro e o exiba.
DO $$
DECLARE
	vi INTEGER := FLOOR(RANDOM()* 99 + 1); 
BEGIN
	RAISE NOTICE 'Valor Sorteado: %', vi;
END;
$$