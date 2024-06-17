-- Gerar inteiros no intervalo de 20 a 50.
-- Leia 2 valores inteiros X e Y.
-- A seguir, calcule e mostre a soma dos números impares entre eles.

DO $$
DECLARE
    x INTEGER;
    y INTEGER;
	px INTEGER;
    soma INTEGER := 0;
    temp INTEGER;
BEGIN
    -- Gerar dois números aleatórios entre 20 e 50
    SELECT valor_aleatorio_entre(20, 50) INTO x;
    SELECT valor_aleatorio_entre(20, 50) INTO y;

    -- Trocar os valores se x for maior que y
    IF x > y THEN
        temp := x;
        x := y;
        y := temp;
    END IF;
    RAISE NOTICE 'X: %. Y: %.', x, y;
	px := x;

    -- Se x for par, avançamos para o próximo ímpar
    IF MOD(x, 2) = 0 THEN
        x := x + 1;
    END IF;

    -- Calcular a soma dos números ímpares entre x e y
    WHILE x <= y LOOP
        soma := soma + x; -- Somar x à soma
        x := x + 2; -- Avançar para o próximo número ímpar
    END LOOP;
    -- Exibir a soma dos números ímpares
    RAISE NOTICE 'A soma dos números ímpares entre % e %: %', px, y, soma;
END;
$$;