-- Gerar inteiros no intervalo de 20 a 50.
-- Leia 2 valores inteiros X e Y.
-- A seguir, calcule e mostre a soma dos números impares entre eles.

DO $$
DECLARE
	a INT[] := '{}';
	contador INT;
	i INT := 20;
    x INTEGER;
    y INTEGER;
	v1 INTEGER;
    v2 INTEGER;
	px INTEGER;
	start_sum BOOLEAN := FALSE;
    soma INTEGER := 0;
BEGIN
	WHILE i <= 50 LOOP
		a := a || ARRAY[i];
		i := i + 1;
	END LOOP;
	-- Gerar dois números aleatórios entre 20 e 50
    SELECT valor_aleatorio_entre(20, 50) INTO v1;
    SELECT valor_aleatorio_entre(20, 50) INTO v2;
	IF v1 > v2 THEN
		x := v2;
		y := v1;
	ELSE
		x := v1;
		y := v2;
	END IF;
	RAISE NOTICE 'X: %. Y: %.', x,y;
	FOREACH contador IN ARRAY a LOOP
		IF contador = x THEN
			start_sum := TRUE;
		END IF;

		IF start_sum AND contador % 2 <> 0 THEN
			soma := soma + contador;
		END IF;
	
		IF contador = y THEN
			EXIT;
		END IF;
	END LOOP;

	RAISE NOTICE 'A soma dos números impares entre % e %: %.', x, y, soma;
END;
$$