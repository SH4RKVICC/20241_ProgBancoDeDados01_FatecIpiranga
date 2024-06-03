-- Dado valores a, b e c desempenhando o papel de coeficientes de um potencial equação do segundo grau
-- Calcule as potenciais raizes;
-- Considere que qualquer um dos coeficientes pode ser igual a zero.
DO $$
DECLARE
	a INT := valor_aleatorio_entre(0, 20);
	b INT := valor_aleatorio_entre(0, 20);
	c INT := valor_aleatorio_entre(0, 20);
	delta NUMERIC(10,2);
	raizUm NUMERIC(10, 2);
	raizDois NUMERIC(10, 2);
BEGIN
    -- U& precedendo uma string indica que podemos especificar símbolos unicode
	RAISE NOTICE 'Equação: %x% + %x + % = 0', a, U&'\00B2', b, c;
	IF a = 0 THEN
		RAISE NOTICE 'Não é uma equação do segundo grau';
	ELSE
		delta := b ^ 2 - 4 * a * c;
		RAISE NOTICE 'Valor de delta: %', delta;
		IF delta < 0 THEN
			RAISE NOTICE 'Nenhum raiz.';
		ELSIF delta = 0 THEN
			raizUm := (-b + |/delta) / 2*a;
			RAISE NOTICE 'Uma raiz: %', raizUm;
		ELSE
			raizUm := (-b + |/delta) / 2*a;
			raizDois := (-b - |/delta) / 2*a;
			RAISE NOTICE 'Duas raizes: % e %', raizUm, raizDois;
		END IF;
	END IF;
END;
$$