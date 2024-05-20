---LOOP: Ignorando iterações com CONTINUE;
--Ignorando iterações especificadas

DO
$$
DECLARE
	contador INT := 0;
BEGIN
   LOOP
		contador := contador + 1;
		EXIT WHEN contador > 100;
		-- Ignorando iteração da vez quando contador for múltiplo de 7 c/IF/CONTINUE
		IF contador % 7 = 0 THEN
			CONTINUE;
		END IF;
		--ignorando iteração da vez quando contador for múltiplo de 11 c/CONTINUE WHEN
   	CONTINUE WHEN contador % 11 = 0;
		RAISE NOTICE '%', contador;
	END LOOP;
END;
$$