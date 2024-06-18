CREATE OR REPLACE FUNCTION fn_all (IN fn_funcao TEXT, VARIADIC elementos INT [])
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
	elemento INT;
	resultado BOOLEAN;
BEGIN
	FOREACH elemento IN ARRAY elementos LOOP
	EXECUTE format ('SELECT %s (%s)', fn_funcao, elemento) INTO resultado;
		IF NOT resultado THEN
			RETURN FALSE;
		END IF;
	END LOOP;
RETURN TRUE;
END;
$$
	
DO $$
DECLARE
	resultado BOOLEAN;
BEGIN
	SELECT fn_all ('fn_ehPar', 1, 2, 3, 4, 5, 6) INTO resultado;
	RAISE NOTICE '%', resultado;
	SELECT fn_all ('fn_ehPar', 2, 4, 6) INTO resultado;
	RAISE NOTICE '%', resultado;
END;
$$