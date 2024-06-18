CREATE OR REPLACE PROCEDURE sp_calcula_media (VARIADIC valores INT [])
LANGUAGE plpgsql
AS $$
DECLARE
    media NUMERIC (10, 2) := 0;
    valor INT;
BEGIN
    FOREACH valor IN ARRAY valores LOOP
        media := media + valor;
    END LOOP;
    -- array_lenght calcula o número de elementos no array. O segundo parâmetro é o número de dimensões dele;
    RAISE NOTICE 'Média: %', media / array_length(valores, 1);
END;
$$

-- 1 parâmetro
CALL sp_calcula_media(1);
-- 2 parâmetros
CALL sp_calcula_media(1, 2);
-- 6 parâmetros
CALL sp_calcula_media(1, 2, 5, 6, 1, 8);
-- não funciona
CALL sp_calcula_media(ARRAY[1, 2]);