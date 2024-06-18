-- OR REPLACE: opicional
-- se o proc ainda não existir, ele será criado
-- se já existir, será substituido

CREATE OR REPLACE PROCEDURE sp_ola_procedures()
LANGUAGE plpgsql
AS $$
BEGIN 
    RAISE NOTICE 'Olá, procedures!';
END;
$$

CALL sp_ola_procedures();