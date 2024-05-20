DO
$$
DECLARE
	nota INT;
	media NUMERIC(10,2) := 0;
	contador INT := 0;
BEGIN
	-- Inicialmente, valores de 0 a 11
	-- Com o -1, temos valores de 0 a 11.
	SELECT valor_aleatorio_entre(0, 11) -1 INTO nota;
	WHILE nota > 0 LOOP
		RAISE NOTICE '%', nota;
		contador := contador + 1;
		SELECT valor_aleatorio_entre(0,11)- 1 INTO nota;
	END LOOP;
	IF contador > 0 THEN
		RAISE NOTICE 'Média %.', media / contador;
	ELSE
		RAISE NOTICE 'Nenhuma nota gerada :(';
	END IF;
END;
$$