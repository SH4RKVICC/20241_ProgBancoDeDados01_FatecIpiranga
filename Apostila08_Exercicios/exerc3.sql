-- 1.3 Faça um programa que gere um valor real no intervalo [20, 30]
-- que representa uma temperatura em graus Celsius. Faça a
-- conversão para Fahrenheit e exiba.

DO $$
DECLARE
	c NUMERIC := RANDOM() * 10 + 20;
	f NUMERIC;
BEGIN
	f := c * 9/5 + 32;
	RAISE NOTICE 'Temperatura em Celsius: %', c;
    RAISE NOTICE 'Temperatura em Fahrenheit: %', f;
END;
$$
