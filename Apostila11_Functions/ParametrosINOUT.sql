DROP PROCEDURE IF EXISTS sp_acha_maior;

-- Criando;
CREATE OR REPLACE PROCEDURE sp_acha_maior (INOUT valor1 INT, IN valor2 INT)
LANGUAGE plpgsql
AS $$
BEGIN
    IF valor2 > valor1 THEN
        valor1 := valor2;
    END IF;
END;
$$

-- Colocando em execução;
DO
$$
DECLARE
    valor1 INT := 2;
    valor1 INT := 3;
BEGIN
    CALL sp_acha_maior(valor1, valor2);
    RAISE NOTICE 'MAIOR: %', valor1;
END;
$$