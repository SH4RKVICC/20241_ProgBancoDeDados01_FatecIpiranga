-- Aqui estamos removendo o proc de nome sp_acha_maior para poder reutilizar o nome
DROP PROCEDURE IF EXISTS sp_acha_maior;
CREATE OR REPLACE PROCEDURE p_acha_maior (OUT resultado INT, IN valor1 INT, IN valor2 INT)
LANGUAGE plpgsql
AS $$
BEGIN
    CASE
        WHEN valor1 > valor2 THEN
            $1 := valor1;
        ELSE
            resultado := valor2;
    END CASE;
END;
$$

-- Colocando em execução
DO $$
DECLARE
    resultado INT;
BEGIN
    CALL p_acha_maior(resultado, 2, 3);
    RAISE NOTICE 'MAIOR: %.', resultado;
END;
$$