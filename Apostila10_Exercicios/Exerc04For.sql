-- Leia um conjunto de 1 a 100 de pares de valores M e N.
-- Para cada par lido, mostre a sequência do menor até o maior e
-- a soma dos inteiros consecutivos entre eles (incluindo o N e M).

DO $$
DECLARE
	m INT;
	n INT;
	v1 INT;
	v2 INT;
	contador INT;
	soma INT := 0;
BEGIN
    SELECT valor_aleatorio_entre(1, 100) INTO v1;
    SELECT valor_aleatorio_entre(1, 100) INTO v2;
	IF v1 > v2 THEN
		m := v2;
		n := v1;
	ELSE
		m := v1;
		n := v2;
	END IF;
	RAISE NOTICE 'Par: % e %!', m, n;
	FOR contador IN m..n LOOP
		RAISE NOTICE '%', contador;
		soma := soma + contador;
	END LOOP;
	RAISE NOTICE 'Soma dos Consecutivos Entre o Par: %', soma;
END;
$$