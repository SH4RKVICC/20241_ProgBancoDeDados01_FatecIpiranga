CREATE OR REPLACE FUNCTION fn_Executa (IN fn_nomeFuncaoAExecutar TEXT, IN n
INT) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
	resultado BOOLEAN;
BEGIN
	-- Execute 'SELECT' || fn_nomeFuncaoAExecutar || '('|| n ||')' INTO resultado;

	-- também pode ser assim
	-- %s: string, %l: identificador (nome de variável), %L: valor literal
	EXECUTE format('SELECT %s(%s)', fn_nomeFuncaoAExecutar, n) INTO RESULTADO;
	RETURN resultado;
END;
$$

SELECT fn_Executa('fn_ehPar',3);