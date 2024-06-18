-- Criando
-- Ambos são IN, pois IN é o padrão
CREATE OR REPLACE PROCEDURE sp_acha_maior(IN valor1 INT, valor2 INT)
LANGUAGE plpgsql
AS $$
BEGIN
	IF valor1 > valor2 THEN
		RAISE NOTICE '% é o maior', $1;
	ELSE
		RAISE NOTICE '% é o maior', $2;
	END IF;
END;
$$

-- Colocando em execução;
CALL sp_acha_maior(2,3);