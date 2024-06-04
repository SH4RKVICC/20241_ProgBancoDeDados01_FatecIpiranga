--- 1.5. Uma empresa resolveu conceder um aumento de salário da seguinte forma
-- Salário	Percentual de Reajuste
-- 0 - 400.00 -> 15%
-- 400.01 - 800.00 -> 12%
-- 800.01 - 1200.00 -> 10%
-- 1200.01 - 2000.00 -> 7%
-- Acima de 2000.00 -> 4%

DO $$
DECLARE
	s NUMERIC:= valor_aleatorio_entre(1, 8000);
	p NUMERIC;
	sf NUMERIC(10,2);
BEGIN
	CASE
		WHEN s <= 400 THEN
			p:= 0.15;
		WHEN s <= 800 THEN
			p:= 0.12;
		WHEN s <= 1200 THEN
			p:= 0.10;
		WHEN s <= 2000 THEN
			p:= 0.07;
		ELSE
			p:= 0.04;
	END CASE;
	sf:= s + (s * p);
	RAISE NOTICE 'Salario Antigo: %', s;
	RAISE NOTICE 'Salario Novo: %', sf;
END;
$$
