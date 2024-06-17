--- Faça um programa que mostre os números pares entre 1 e 100, inclusive.

DO $$
DECLARE
    num INTEGER := 0;
BEGIN
    FOR num IN 1..100 LOOP
        IF num % 2 = 0 THEN
            RAISE NOTICE '%', num;
        END IF;
END;
$$ LANGUAGE plpgsql;