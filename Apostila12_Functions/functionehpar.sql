CREATE OR REPLACE FUNCTION fn_ehPar (IN n INT) RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
BEGIN
	RETURN n % 2 = 0;
END;
$$

SELECT fn_ehPar(2);