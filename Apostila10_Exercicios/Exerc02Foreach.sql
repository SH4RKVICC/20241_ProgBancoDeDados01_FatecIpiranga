-- Gerar inteiros no intervalo de -50 a 50.
-- Faça um programa que leia 6 valores. Estes valores serão somente negativos ou positivos (desconsidere os valores nulos).
-- A seguir, mostre a quantidade de valores positivos digitados.

-- Gerar inteiros no intervalo de -50 a 50.
-- Faça um programa que leia 6 valores. Estes valores serão somente negativos ou positivos (desconsidere os valores nulos).
-- A seguir, mostre a quantidade de valores positivos digitados.

CREATE OR REPLACE FUNCTION valor_aleatorio (lim_N NUMERIC, lim_P NUMERIC) RETURNS NUMERIC AS
$$
BEGIN
    RETURN FLOOR(RANDOM() * (lim_N - lim_P + 1) + lim_P)::NUMERIC;
END;
$$ LANGUAGE plpgsql;

DO $$
DECLARE
    valores NUMERIC[] := ARRAY [
        valor_aleatorio(50, -50),
        valor_aleatorio(50, -50),
        valor_aleatorio(50, -50),
        valor_aleatorio(50, -50),
        valor_aleatorio(50, -50),
        valor_aleatorio(50, -50)
    ];
    valor NUMERIC;
    contador_positivos INT := 0;
BEGIN
    RAISE NOTICE 'NÚMEROS ALEATÓRIOS GERADOS: %, %, %, %, % e %.', valores[1], valores[2], valores[3], valores[4], valores[5], valores[6];
    
    FOREACH valor IN ARRAY valores LOOP
        IF valor > 0 THEN
            contador_positivos := contador_positivos + 1;
        END IF;
    END LOOP;
    
    RAISE NOTICE 'Quantidade de valores positivos: %', contador_positivos;
END;
$$