CREATE OR REPLACE FUNCTION fn_some (IN fn_funcao TEXT, VARIADIC elementos
INT[]) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
	elemento INT;
	resultado BOOLEAN;
BEGIN
	FOREACH elemento IN ARRAY elementos LOOP
		EXECUTE format ('SELECT %s(%s)', fn_funcao, elemento) INTO resultado;
		IF TRUE THEN
			RETURN TRUE;
		END IF;
	END LOOP;
	RETURN FALSE;
END;
$$

DO $$
DECLARE
	resultado BOOLEAN;
BEGIN
	SELECT fn_some ('fn_ehPar', 1, 2) INTO resultado;
	RAISE NOTICE '%', resultado;
	SELECT fn_some ('fn_ehPar', 1, 3, 5) INTO resultado;
	RAISE NOTICE '%', resultado;
END;
$$
	

SELECT fn_Executa('fn_ehPar',3);