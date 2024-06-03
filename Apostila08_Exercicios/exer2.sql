-- 1.2. Faça um programa que gere um valor real e o exiba.
DO $$
DECLARE
	vr NUMERIC := RANDOM() * 49 + 1; 
BEGIN
	RAISE NOTICE 'Valor Sorteado: %', vr;
END;
$$