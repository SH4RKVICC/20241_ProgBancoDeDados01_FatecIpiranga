DO
$$
DECLARE
	i INT;
	j INT;
BEGIN
	i := 0;
	<<externo>>
	LOOP
		i := i +1;
		EXIT WHEN i > 10;
		j := 1;
		<<interno>>
		LOOP
			RAISE NOTICE '% %', i, j;
			j := j + 1;
			EXIT WHEN j > 10;
			-- j vai contar até 5, o loop interno vai ser interrompido e prosseguimos para a próxima iteração ao loop externo
			CONTINUE externo WHEN j > 5;
		END LOOP;
	END LOOP;
END;
$$