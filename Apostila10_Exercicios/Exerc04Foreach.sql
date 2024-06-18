-- Leia um conjunto de 1 a 100 de pares de valores M e N.
-- Para cada par lido, mostre a sequência do menor até o maior e
-- a soma dos inteiros consecutivos entre eles (incluindo o N e M).

DO $$
DECLARE
    a INT[] := '{}';
	m INT;
	n INT;
	v1 INT;
	v2 INT;
	i INT := 1;
	vp INT;
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

    WHILE i <= 100 LOOP
        a := a || ARRAY[i];
        i := i + 1;
    END LOOP;

	i := m;
	FOREACH vp IN ARRAY a LOOP
		IF i <= n THEN
			RAISE NOTICE '%', i;
			soma := soma + i;
			i := i + 1;
		END IF;
	END LOOP;
	RAISE NOTICE 'Soma dos Consecutivos Entre o Par: %.', soma;
END;
$$