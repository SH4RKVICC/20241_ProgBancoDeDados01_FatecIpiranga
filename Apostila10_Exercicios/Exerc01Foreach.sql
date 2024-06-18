--- Faça um programa que mostre os números pares entre 1 e 100, inclusive.

-- Faça um programa que mostre os números pares entre 1 e 100, inclusive.

DO $$
DECLARE
    a INT[] := '{}';
    i INT := 1;
	vp INT;
	contador_positivos INT := 0;
BEGIN
    WHILE i <= 100 LOOP
        a := a || ARRAY[i];
        i := i + 1;
    END LOOP;

	FOREACH vp IN ARRAY a LOOP
		IF vp % 2 = 0 THEN
			RAISE NOTICE '%', vp;
		END IF;
	END LOOP;
END;
$$


