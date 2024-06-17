-- Gerar inteiros no intervalo de 20 a 50.
-- Leia 2 valores inteiros X e Y.
-- A seguir, calcule e mostre a soma dos números impares entre eles.

DO $$
DECLARE
    x INTEGER;
    y INTEGER;
    soma INTEGER := 0; -- Inicialize a variável soma
BEGIN
    SELECT valor_aleatorio_entre(20, 50) INTO x;
    SELECT valor_aleatorio_entre(20, 50) INTO y;
    
    -- Garanta que X seja menor ou igual a Y
    IF x > y THEN
        x := x + y;
        y := x - y;
        x := x - y;
    END IF;
    
    -- Calcule a soma dos números ímpares entre X e Y
    FOR i IN x..y LOOP
        IF MOD(i, 2) = 1 THEN
            soma := soma + i;
        END IF;
    END LOOP;
    
    -- Exiba a soma dos números ímpares
	RAISE NOTICE ' A soma dos números ímpares entre % e %: %', x, y, soma;
END;
$$;
