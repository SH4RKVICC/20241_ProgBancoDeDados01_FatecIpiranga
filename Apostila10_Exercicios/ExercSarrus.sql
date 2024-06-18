-- 1.2 Faça um programa que calcule o determinante de uma matriz quadrada de ordem 3
-- utilizando a regra de Sarrus.
-- Preencha a matriz com valores inteiros aleatórios no intervalo de 1 a 12.

DO $$
DECLARE
    matriz INT[][] := '{{0,0,0},{0,0,0},{0,0,0}}';
    i INT := 1;
    det INT := 0;
BEGIN
    -- Preenchimento da matriz com valores aleatórios entre 1 e 12
    WHILE i <= 3 LOOP
        DECLARE
            j INT := 1;
        BEGIN
            WHILE j <= 3 LOOP
                matriz[i][j] := valor_aleatorio_entre(1, 12);
                j := j + 1;
            END LOOP;
        END;
        i := i + 1;
    END LOOP;

    -- Exibição da matriz
    RAISE NOTICE 'Matriz:';
    i := 1;
    WHILE i <= 3 LOOP
        DECLARE
            j INT := 1;
        BEGIN
            WHILE j <= 3 LOOP
                RAISE NOTICE 'matriz[%][%] = %', i, j, matriz[i][j];
                j := j + 1;
            END LOOP;
        END;
        i := i + 1;
    END LOOP;

    -- Cálculo do determinante usando a regra de Sarrus
    det := matriz[1][1] * matriz[2][2] * matriz[3][3] +
           matriz[1][2] * matriz[2][3] * matriz[3][1] +
           matriz[1][3] * matriz[2][1] * matriz[3][2] -
           (matriz[1][3] * matriz[2][2] * matriz[3][1] -
            matriz[1][1] * matriz[2][3] * matriz[3][2] -
            matriz[1][2] * matriz[2][1] * matriz[3][3]);

    -- Exibição do determinante
    RAISE NOTICE 'Determinante da matriz = %', det;
END;
$$;
